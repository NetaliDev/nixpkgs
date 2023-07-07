{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.librenms;
  settingsFormat = pkgs.formats.json {};
  configJson = settingsFormat.generate "librenms-config.json" cfg.settings;

  package = pkgs.librenms.override {
    logDir = cfg.logDir;
    dataDir = cfg.dataDir;
  };

  phpOptions = ''
    log_errors = on
    post_max_size = 100M
    upload_max_filesize = 100M
    date.timezone = "${config.time.timeZone}"
  '';
  phpIni = pkgs.runCommand "php.ini" {
    inherit (package) phpPackage;
    inherit phpOptions;
    preferLocalBuild = true;
    passAsFile = [ "phpOptions" ];
  } ''
    cat $phpPackage/etc/php.ini $phpOptionsPath > $out
  '';

  artisanWrapper = pkgs.writeShellScriptBin "librenms-artisan" ''
    cd ${package}
    sudo=exec
    if [[ "$USER" != ${cfg.user} ]]; then
      sudo='exec /run/wrappers/bin/sudo -u ${cfg.user}'
    fi
    $sudo ${package}/artisan $*
  '';

  lnmsWrapper = pkgs.writeShellScriptBin "lnms" ''
    cd ${package}
    exec ${package}/lnms $*
  '';

  configFile = pkgs.writeText "config.php" ''
    <?php
    $new_config = json_decode(file_get_contents("${cfg.dataDir}/config.json"), true);
    $config = ($config == null) ? $new_config : array_merge($config, $new_config);

    ${optionalString (cfg.extraConfig != null) cfg.extraConfig}
  '';

in {
  options.services.librenms = {
    enable = mkEnableOption (mdDoc "Enable the LibreNMS network monitoring system.");

    user = mkOption {
      type = types.str;
      default = "librenms";
      description = mdDoc ''
        Name of the LibreNMS user.
      '';
    };

    group = mkOption {
      type = types.str;
      default = "librenms";
      description = mdDoc ''
        Name of the LibreNMS group.
      '';
    };

    hostname = mkOption {
      type = types.str;
      default = config.networking.fqdnOrHostName;
      defaultText = lib.literalExpression "config.networking.fqdnOrHostName";
      description = mdDoc ''
        The hostname to serve LibreNMS on.
      '';
    };

    pollerThreads = mkOption {
      type = types.int;
      default = 16;
      description = mdDoc ''
        Amount of threads of the cron-poller.
      '';
    };

    enableOneMinutePolling = mkOption {
      type = types.bool;
      default = false;
      description = mdDoc ''
        Enables the [1-Minute Polling](https://docs.librenms.org/Support/1-Minute-Polling/).
        Changing this option will automatically convert your existing rrd files.
      '';
    };

    poolConfig = mkOption {
      type = with types; attrsOf (oneOf [ str int bool ]);
      default = {
        "pm" = "dynamic";
        "pm.max_children" = 32;
        "pm.start_servers" = 2;
        "pm.min_spare_servers" = 2;
        "pm.max_spare_servers" = 4;
        "pm.max_requests" = 500;
      };
      description = lib.mdDoc ''
        Options for the LibreNMS PHP pool. See the documentation on `php-fpm.conf`
        for details on configuration directives.
      '';
    };

    nginx = mkOption {
      type = types.submodule (
        recursiveUpdate
          (import ../web-servers/nginx/vhost-options.nix { inherit config lib; }) {}
      );
      default = { };
      example = literalExpression ''
        {
          serverAliases = [
            "librenms.''${config.networking.domain}"
          ];
          # To enable encryption and let let's encrypt take care of certificate
          forceSSL = true;
          enableACME = true;
          # To set the LibreNMS virtualHost as the default virtualHost;
          default = true;
        }
      '';
      description = mdDoc ''
        With this option, you can customize the nginx virtualHost settings.
      '';
    };

    dataDir = mkOption {
      type = types.path;
      default = "/var/lib/librenms";
      description = mdDoc ''
        Path of the LibreNMS state directory.
      '';
    };

    logDir = mkOption {
      type = types.path;
      default = "/var/log/librenms";
      description = mdDoc ''
        Path of the LibreNMS logging directory.
      '';
    };

    database = {
      createLocally = mkOption {
        type = types.bool;
        default = false;
        description = mdDoc ''
          Whether to create a local database automatically.
        '';
      };

      host = mkOption {
        default = "localhost";
        description = mdDoc ''
          Hostname or IP of the MySQL/MariaDB server.
        '';
      };

      port = mkOption {
        type = types.port;
        default = 3306;
        description = mdDoc ''
          Port of the MySQL/MariaDB server.
        '';
      };

      database = mkOption {
        type = types.str;
        default = "librenms";
        description = mdDoc ''
          Name of the database on the MySQL/MariaDB server.
        '';
      };

      username = mkOption {
        type = types.str;
        default = "librenms";
        description = mdDoc ''
          Name of the user on the MySQL/MariaDB server.
        '';
      };

      passwordFile = mkOption {
        type = types.path;
        example = "/run/secrets/mysql.pass";
        description = mdDoc ''
          A file containing the password for the user of the MySQL/MariaDB server.
          Must be readable for the LibreNMS user.
        '';
      };
    };

    environmentFile = mkOption {
      type = types.nullOr types.str;
      default = null;
      description = lib.mdDoc ''
        File containing env-vars to be substituted into the final config. Useful for secrets.
        Does not apply to settings defined in `extraConfig`.
      '';
    };

    settings = mkOption {
      type = lib.types.submodule {
        freeformType = settingsFormat.type;
        options = {};
      };
      description = lib.mdDoc ''
        Attrset of the LibreNMS configuration.
        See https://docs.librenms.org/Support/Configuration/ for reference.
        All possible options are listed [here](https://github.com/librenms/librenms/blob/master/misc/config_definitions.json).
        See https://docs.librenms.org/Extensions/Authentication/ for setting other authentication methods.
      '';
      default = { };
      example = {
        base_url = "/librenms/";
        top_devices = true;
        top_ports = false;
      };
    };

    extraConfig = mkOption {
      type = types.nullOr types.str;
      default = null;
      description = mdDoc ''
        Additional config for LibreNMS that will be appended to the `config.php`. See
        https://github.com/librenms/librenms/blob/master/misc/config_definitions.json
        for possible options. Useful if you want to use PHP-Functions in your config.
      '';
    };
  };

  config = mkIf cfg.enable {
    assertions = [
      {
        assertion = config.time.timeZone != null;
        message = "You must set `time.timeZone` to use the LibreNMS module.";
      }
      {
        assertion = cfg.database.createLocally -> cfg.database.host == "localhost";
        message = "The database host must be \"localhost\" if you services.librenms.database.createLocally is set to true.";
      }
    ];

    users.users.${cfg.user} = {
      group = "${cfg.group}";
      isSystemUser = true;
    };

    users.groups.${cfg.group} = { };

    services.librenms.settings = {
      # basic configs
      "user" = cfg.user;
      "own_hostname" = cfg.hostname;
      "base_url" = mkDefault "/";
      "auth_mechanism" = mkDefault "mysql";

      # disable auto update function (won't work with NixOS)
      "update" = false;

      # enable fast ping by default
      "ping_rrd_step" = 60;

      # one minute polling
      "rrd.step" = if cfg.enableOneMinutePolling then 60 else 300;
      "rrd.heartbeat" = if cfg.enableOneMinutePolling then 120 else 600;
    };

    services.mysql = mkIf cfg.database.createLocally {
      enable = true;
      package = mkDefault pkgs.mariadb;
      settings.mysqld = {
        innodb_file_per_table = 1;
        lower_case_table_names = 0;
      };
      ensureDatabases = [ cfg.database.database ];
      ensureUsers = [
        {
          name = cfg.database.username;
          ensurePermissions = {
            "${cfg.database.database}.*" = "ALL PRIVILEGES";
          };
        }
      ];
    };

    services.nginx = {
      enable = true;
      virtualHosts."${cfg.hostname}" = mkMerge [
        cfg.nginx
        {
          root = mkForce "${package}/html";
          locations."/" = {
            index = "index.php";
            tryFiles = "$uri $uri/ /index.php?$query_string";
          };
          locations."~ .php$".extraConfig = ''
            fastcgi_pass unix:${config.services.phpfpm.pools."librenms".socket};
            fastcgi_split_path_info ^(.+\.php)(/.+)$;
          '';
        }
      ];
    };

    services.phpfpm.pools.librenms = {
      user = cfg.user;
      group = cfg.group;
      inherit (package) phpPackage;
      inherit phpOptions;
      settings = {
        "listen.mode" = "0660";
        "listen.owner" = config.services.nginx.user;
        "listen.group" = config.services.nginx.group;
      } // cfg.poolConfig;
    };

    systemd.services.librenms-scheduler = {
      description = "LibreNMS Scheduler";
      path = [ pkgs.unixtools.whereis ];
      serviceConfig = {
        Type = "oneshot";
        WorkingDirectory = package;
        User = cfg.user;
        Group = cfg.group;
        ExecStart = "${artisanWrapper}/bin/librenms-artisan schedule:run";
      };
    };

    systemd.timers.librenms-scheduler = {
      description = "LibreNMS Scheduler";
      wantedBy = [ "timers.target" ];
      timerConfig = {
        OnCalendar = "minutely";
        AccuracySec = "1second";
      };
    };

    systemd.services.librenms-setup = {
      description = "Preparation tasks for LibreNMS";
      before = [ "phpfpm-librenms.service" ];
      after = [ "systemd-tmpfiles-setup.service" ]
        ++ (optional (cfg.database.host == "localhost") "mysql.service");
      wantedBy = [ "multi-user.target" ];
      restartTriggers = [ package configFile ];
      path = [ pkgs.mariadb pkgs.unixtools.whereis pkgs.gnused ];
      serviceConfig = {
        Type = "oneshot";
        RemainAfterExit = true;
        EnvironmentFile = mkIf (cfg.environmentFile != null) [ cfg.environmentFile ];
        User = cfg.user;
        Group = cfg.group;
        ExecStartPre = mkIf cfg.database.createLocally [ "!${pkgs.writeShellScript "librenms-db-init" ''
          DB_PASSWORD=$(cat ${cfg.database.passwordFile} | tr -d '\n')
          echo "ALTER USER ${cfg.database.username}@localhost IDENTIFIED BY '$DB_PASSWORD';" | ${pkgs.mariadb}/bin/mysql
        ''}"];
      };
      script = ''
        # config setup
        ln -sf ${configFile} ${cfg.dataDir}/config.php
        ${pkgs.envsubst}/bin/envsubst -i ${configJson} -o ${cfg.dataDir}/config.json
        export PHPRC=${phpIni}

        if [[ ! -s ${cfg.dataDir}/.env ]]; then
          # init .env file
          echo "APP_KEY=" > ${cfg.dataDir}/.env
          ${artisanWrapper}/bin/librenms-artisan key:generate --ansi
          ${artisanWrapper}/bin/librenms-artisan webpush:vapid
          echo "" >> ${cfg.dataDir}/.env
          echo -n "NODE_ID=" >> ${cfg.dataDir}/.env
          ${package.phpPackage}/bin/php -r "echo uniqid();" >> ${cfg.dataDir}/.env
          echo "" >> ${cfg.dataDir}/.env
        else
          # .env file already exists --> only update database config
          ${pkgs.gnused}/bin/sed -i /^DB_/d ${cfg.dataDir}/.env
        fi
        echo "DB_HOST=${cfg.database.host}" >> ${cfg.dataDir}/.env
        echo "DB_PORT=${toString cfg.database.port}" >> ${cfg.dataDir}/.env
        echo "DB_DATABASE=${cfg.database.database}" >> ${cfg.dataDir}/.env
        echo "DB_USERNAME=${cfg.database.username}" >> ${cfg.dataDir}/.env
        echo -n "DB_PASSWORD=" >> ${cfg.dataDir}/.env
        cat ${cfg.database.passwordFile} >> ${cfg.dataDir}/.env

        # clear cache after update
        OLD_VERSION=$(cat ${cfg.dataDir}/version)
        if [[ $OLD_VERSION != "${package.version}" ]]; then
          rm -r ${cfg.dataDir}/cache/*
          echo "${package.version}" > ${cfg.dataDir}/version
        fi

        # convert rrd files when the oneMinutePolling option is changed
        OLD_ENABLED=$(cat ${cfg.dataDir}/one_minute_enabled)
        if [[ $OLD_ENABLED != "${boolToString cfg.enableOneMinutePolling}" ]]; then
          ${package}/scripts/rrdstep.php -h all
          echo "${boolToString cfg.enableOneMinutePolling}" > ${cfg.dataDir}/one_minute_enabled
        fi

        # migrate db
        ${artisanWrapper}/bin/librenms-artisan migrate --force --no-interaction --isolated
      '';
    };

    programs.mtr.enable = true;

    services.logrotate = {
      enable = true;
      settings."${cfg.logDir}/librenms.log" = {
        su = "${cfg.user} ${cfg.group}";
        create = "0640 ${cfg.user} ${cfg.group}";
        rotate = 6;
        frequency = "weekly";
        compress = true;
        delaycompress = true;
        missingok = true;
        notifempty = true;
      };
    };

    services.cron = {
      enable = true;
      systemCronJobs = let
        env = "PHPRC=${phpIni}";
      in [
        # based on crontab provided by LibreNMS
        "33 */6 * * * ${cfg.user} ${env} ${package}/cronic ${package}/discovery-wrapper.py 1"
        "*/5 * * * * ${cfg.user} ${env} ${package}/discovery.php -h new >> /dev/null 2>&1"

        "${if cfg.enableOneMinutePolling then "*" else "*/5"} * * * * ${cfg.user} ${env} ${package}/cronic ${package}/poller-wrapper.py ${toString cfg.pollerThreads}"
        "* * * * * ${cfg.user} ${env} ${package}/alerts.php >> /dev/null 2>&1"

        "*/5 * * * * ${cfg.user} ${env} ${package}/poll-billing.php >> /dev/null 2>&1"
        "01 * * * * ${cfg.user} ${env} ${package}/billing-calculate.php >> /dev/null 2>&1"
        "*/5 * * * * ${cfg.user} ${env} ${package}/check-services.php >> /dev/null 2>&1"

        # extra: fast ping
        "* * * * * ${cfg.user} ${env} ${package}/ping.php >> /dev/null 2>&1"

        # daily.sh tasks are split to exclude update
        "19 0 * * * ${cfg.user} ${env} ${package}/daily.sh cleanup >> /dev/null 2>&1"
        "19 0 * * * ${cfg.user} ${env} ${package}/daily.sh notifications >> /dev/null 2>&1"
        "19 0 * * * ${cfg.user} ${env} ${package}/daily.sh peeringdb >> /dev/null 2>&1"
        "19 0 * * * ${cfg.user} ${env} ${package}/daily.sh mac_oui >> /dev/null 2>&1"
      ];
    };

    security.wrappers = {
      fping = {
        setuid = true;
        owner = "root";
        group = "root";
        source = "${pkgs.fping}/bin/fping";
      };
    };

    environment.systemPackages = [ artisanWrapper lnmsWrapper ];

    systemd.tmpfiles.rules = [
      "d ${cfg.logDir}                               0750 ${cfg.user} ${cfg.group} - -"
      "f ${cfg.logDir}/librenms.log                  0640 ${cfg.user} ${cfg.group} - -"
      "d ${cfg.dataDir}                              0750 ${cfg.user} ${cfg.group} - -"
      "f ${cfg.dataDir}/.env                         0600 ${cfg.user} ${cfg.group} - -"
      "f ${cfg.dataDir}/version                      0600 ${cfg.user} ${cfg.group} - -"
      "f ${cfg.dataDir}/one_minute_enabled           0600 ${cfg.user} ${cfg.group} - -"
      "f ${cfg.dataDir}/config.json                  0600 ${cfg.user} ${cfg.group} - -"
      "d ${cfg.dataDir}/storage                      0700 ${cfg.user} ${cfg.group} - -"
      "d ${cfg.dataDir}/storage/app                  0700 ${cfg.user} ${cfg.group} - -"
      "d ${cfg.dataDir}/storage/debugbar             0700 ${cfg.user} ${cfg.group} - -"
      "d ${cfg.dataDir}/storage/framework            0700 ${cfg.user} ${cfg.group} - -"
      "d ${cfg.dataDir}/storage/framework/cache      0700 ${cfg.user} ${cfg.group} - -"
      "d ${cfg.dataDir}/storage/framework/sessions   0700 ${cfg.user} ${cfg.group} - -"
      "d ${cfg.dataDir}/storage/framework/views      0700 ${cfg.user} ${cfg.group} - -"
      "d ${cfg.dataDir}/storage/logs                 0700 ${cfg.user} ${cfg.group} - -"
      "d ${cfg.dataDir}/rrd                          0700 ${cfg.user} ${cfg.group} - -"
      "d ${cfg.dataDir}/cache                        0700 ${cfg.user} ${cfg.group} - -"
    ];

  };
}

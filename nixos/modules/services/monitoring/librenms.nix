{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.librenms;

  boolToString = x: (if x then "true" else "false");

  package = pkgs.librenms.override {
    logDir = cfg.logDir;
    dataDir = cfg.dataDir;
  };

  phpPackage = pkgs.php82.buildEnv {
    extraConfig = ''
      log_errors = on
      post_max_size = 100M
      upload_max_filesize = 100M
      date.timezone = "${config.time.timeZone}"
    '';
  };

  pythonPackages = ps:
    with ps; [
      pymysql
      python-dotenv
      redis
      setuptools
      psutil
      command_runner
    ];

  artisanWrapper = pkgs.writeShellScriptBin "artisan" ''
    cd ${package}
    sudo=exec
    if [[ "$USER" != ${cfg.user} ]]; then
      sudo='exec /run/wrappers/bin/sudo -u ${cfg.user}'
    fi
    $sudo ${phpPackage}/bin/php artisan $*
  '';

  lnmsWrapper = pkgs.writeShellScriptBin "lnms" ''
    cd ${package}
    exec ${phpPackage}/bin/php lnms $*
  '';

  configFile = pkgs.writeText "config.php" (''
    <?php
    $config['user'] = "${cfg.user}";
    $config['own_hostname'] = "${cfg.hostname}";
    $config['base_url'] = "${cfg.config.baseUrl}";
    $config['auth_mechanism'] = "${cfg.config.authMechanism}";

    # disable auto update function (won't work with NixOS)
    $config['update'] = false;

    # enable fast ping by default
    $config['ping_rrd_step'] = 60;

    # one minute polling
    $config['rrd.step'] = ${if cfg.enableOneMinutePolling then "60" else "300"};
    $config['rrd.heartbeat'] = ${if cfg.enableOneMinutePolling then "120" else "600"};

    $config['fping'] = "/run/wrappers/bin/fping";
    $config['mtr'] = "${config.programs.mtr.package}/bin/mtr";
    $config['rrdtool'] = "${pkgs.rrdtool}/bin/rrdtool";
    $config['snmpwalk'] = "${pkgs.net-snmp}/bin/snmpwalk";
    $config['snmpget'] = "${pkgs.net-snmp}/bin/snmpget";
    $config['snmpgetnext'] = "${pkgs.net-snmp}/bin/snmpgetnext";
    $config['snmpbulkwalk'] = "${pkgs.net-snmp}/bin/snmpbulkwalk";

    ${optionalString (cfg.config.extraConfig != null) cfg.config.extraConfig}
  '' + optionalString (cfg.config.authMechanism == "ldap") ''
    $config['auth_ldap_attr.uid'] = "${cfg.config.ldap.uidAttr}";
    $config['auth_ldap_cache_ttl'] = ${toString cfg.config.ldap.cacheTTL};
    $config['auth_ldap_debug'] = ${boolToString cfg.config.ldap.debug};
    $config['auth_ldap_emailattr'] = "${cfg.config.ldap.emailAttr}";
    ${optionalString (cfg.config.ldap.group != null) "$config['auth_ldap_group'] = '${cfg.config.ldap.group}';"}
    $config['auth_ldap_groupbase'] = "${cfg.config.ldap.groupBase}";
    $config['auth_ldap_groupmemberattr'] = "${cfg.config.ldap.groupMemberAttr}";
    $config['auth_ldap_groupmembertype'] = "${cfg.config.ldap.groupMemberType}";
    $config['auth_ldap_require_groupmembership'] = ${toString cfg.config.ldap.requireGroupMembership};
    ${concatStringsSep "\n" (forEach cfg.config.ldap.groups (x: ''
      $config['auth_ldap_groups']['${x.name}']['level'] = ${toString x.level};
    ''))}
    $config['auth_ldap_port'] = ${toString cfg.config.ldap.port};
    $config['auth_ldap_prefix'] = "${cfg.config.ldap.prefix}";
    $config['auth_ldap_suffix'] = "${cfg.config.ldap.suffix}";
    $config['auth_ldap_server'] = "${concatStringsSep " " (forEach cfg.config.ldap.server (x: "${x}"))}";
    $config['auth_ldap_starttls'] = "${cfg.config.ldap.startTLS}";
    $config['auth_ldap_timeout'] = ${toString cfg.config.ldap.timeout};
    $config['auth_ldap_uid_attribute'] = "${cfg.config.ldap.numericUidAttr}";
    $config['auth_ldap_userdn'] = ${boolToString cfg.config.ldap.userDN};
    $config['auth_ldap_wildcard_ou'] = ${boolToString cfg.config.ldap.wildcardOU};
    $config['auth_ldap_version'] = ${toString cfg.config.ldap.version};
  '' + optionalString (cfg.config.authMechanism == "ldap" && cfg.config.ldap.useBindUser) ''
    $config['auth_ldap_binddn'] = "${cfg.config.ldap.bindDN}";
    $config['auth_ldap_binduser'] = "${cfg.config.ldap.bindUser}";
    $config['auth_ldap_bindanonymous'] = false;
  '' + optionalString (cfg.config.authMechanism == "ldap" && !cfg.config.ldap.useBindUser) ''
    $config['auth_ldap_bindanonymous'] = true;
  '');

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

    config = {
      baseUrl = mkOption {
        type = types.str;
        default = "/";
        description = mdDoc ''
          Base URL of the LibreNMS.
        '';
      };
      authMechanism = mkOption {
        type = types.enum [ "mysql" "ldap" "http-auth" ];
        default = "mysql";
        description = mdDoc ''
          Authentication mechanism to use.
        '';
      };
      ldap = {
        version = mkOption {
          type = types.enum [ 2 3 ];
          default = 3;
          description = mdDoc ''
            LDAP protocol version to use.
          '';
        };
        useBindUser = mkOption {
          type = types.bool;
          default = true;
          description = mdDoc ''
            If your ldap server does not allow anonymous bind, it is highly suggested
            to create a bind user, otherwise "remember me", alerting users,
            and the API will not work.
          '';
        };
        bindDN = mkOption {
          type = types.str;
          description = mdDoc ''
            LDAP bind DN to use (overrides `bindUser`).
            Only needed if `useBindUser` is `true`.
          '';
        };
        bindUser = mkOption {
          type = types.str;
          description = mdDoc ''
            LDAP bind user to use.
            Only needed if `useBindUser` is `true`.
          '';
        };
        bindPasswordFile = mkOption {
          type = types.path;
          example = "/run/secrets/librenms-bind.pass";
          description = mdDoc ''
            A file containing the password of the LDAP bind user.
            Only needed if `useBindUser` is `true`.
          '';
        };
        server = mkOption {
          type = types.listOf types.str;
          description = mdDoc ''
            LDAP servers to use for authentication.
          '';
        };
        port = mkOption {
          type = types.port;
          default = 389;
          description = mdDoc ''
            LDAP port to use. Normally 389 or 636 for SSL.
          '';
        };
        startTLS = mkOption {
          type = types.enum [ "disabled" "optional" "required" ];
          default = "disabled";
          description = mdDoc ''
            Use STARTTLS to secure the connection. Alternative to LDAPS.
          '';
        };
        cacheTTL = mkOption {
          type = types.int;
          default = 300;
          description = mdDoc ''
            TTL of the LDAP auth cache in seconds.
          '';
        };
        uidAttr = mkOption {
          type = types.str;
          default = "uid";
          description = mdDoc ''
            Attribute used to identify users by username.
          '';
        };
        numericUidAttr = mkOption {
          type = types.str;
          default = "uidnumber";
          description = mdDoc ''
            LDAP Attribute to get the unique numeric ID of the user.
          '';
        };
        emailAttr = mkOption {
          type = types.str;
          default = "mail";
          description = mdDoc ''
            Name of the email attribute of the LDAP users.
          '';
        };
        prefix = mkOption {
          type = types.str;
          default = "uid=";
          description = mdDoc ''
            A prefix prepended to LDAP usernames.
          '';
        };
        suffix = mkOption {
          type = types.str;
          example = ",ou=People,dc=example,dc=com";
          description = mdDoc ''
            A suffix appended to LDAP usernames, used to complete the DN of the user.
          '';
        };
        debug = mkOption {
          type = types.bool;
          default = false;
          description = mdDoc ''
            Enable LDAP auth debugging.
          '';
        };
        timeout = mkOption {
          type = types.int;
          default = 5;
          description = mdDoc ''
            TTL of the LDAP auth cache in seconds.
          '';
        };
        wildcardOU = mkOption {
          type = types.bool;
          default = false;
          description = mdDoc ''
            Search for user matching user name independently of OU set in user suffix.
            Useful if your users are in different OU.
          '';
        };
        userDN = mkOption {
          type = types.bool;
          default = false;
          description = mdDoc ''
            Uses a user's full DN as the value of the member attribute in a group instead
            of the username using the prefix and suffix.
          '';
        };
        groupBase = mkOption {
          type = types.str;
          description = mdDoc ''
            The LDAP OU which contains the LDAP groups.
          '';
        };
        groupMemberAttr = mkOption {
          type = types.str;
          default = "memberUid";
          description = mdDoc ''
            Name of the attribute to use to see if a user is a member of a group.
          '';
        };
        groupMemberType = mkOption {
          type = types.enum [ "username" "fulldn" "puredn" ];
          default = "username";
          description = mdDoc ''
            Find group members by:

            - **username**: Username
            - **fulldn**: Full DN (using prefix and suffix)
            - **puredn**: DN Search (search using uid attribute)
          '';
        };
        requireGroupMembership = mkOption {
          type = types.bool;
          default = true;
          description = mdDoc ''
            Require the membership in at least one of the specified LDAP Groups
            to allow a user to log in.
          '';
        };
        group = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = mdDoc ''
            DN for a group to give normal level access (level 1).
          '';
        };
        groups = mkOption {
          description = mdDoc ''
            Assign access levels to specific LDAP groups.
          '';
          default = [];
          type = types.listOf (types.submodule {
            options = {
              name = mkOption {
                type = types.str;
                description = lib.mdDoc ''
                  Name of the LDAP-Group.
                '';
              };
              level = mkOption {
                type = types.enum [ 1 5 10 11 ];
                description = lib.mdDoc ''
                  Levels of users in the group. The following levels are available:

                  - 1: **Normal User**: You will need to assign device / port permissions for groups at this level.
                  - 5: **Global Read**: Read only admins.
                  - 10: **Administrator**: Global read/write admin account.
                  - 11: **Demo Account**: Provides full read/write with certain restrictions (i.e can't delete devices).
                '';
              };
            };
          });
        };
      };
      extraConfig = mkOption {
        type = types.nullOr types.str;
        default = null;
        description = mdDoc ''
          Additional config for LibreNMS that will be appended to the `config.php`. See
          https://github.com/librenms/librenms/blob/master/misc/config_definitions.json
          for possible options.
        '';
        example = literalExpression ''
          $config['top_devices'] = true;
          $config['top_ports'] = false;
        '';
      };
    };
  };

  config = mkIf cfg.enable {
    users.users.${cfg.user} = {
      group = "${cfg.group}";
      isSystemUser = true;
    };

    users.groups.${cfg.group} = { };

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
      phpPackage = phpPackage;
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
        ExecStart = "${phpPackage}/bin/php ./artisan schedule:run";
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
        User = cfg.user;
        Group = cfg.group;
      };
      script = ''
        cat ${configFile} > ${cfg.dataDir}/config.php
        ${optionalString (cfg.config.authMechanism == "ldap" && cfg.config.ldap.useBindUser) ''
          echo -n "\$config['auth_ldap_bindpassword'] = '" >> ${cfg.dataDir}/config.php
          cat ${cfg.config.ldap.bindPasswordFile} | tr -d "\n" >> ${cfg.dataDir}/config.php
          echo "';" >> ${cfg.dataDir}/config.php
        ''}
        if [[ ! -s ${cfg.dataDir}/.env ]]; then
          # init .env file
          echo "APP_KEY=" > ${cfg.dataDir}/.env
          ${artisanWrapper}/bin/artisan key:generate --ansi
          ${artisanWrapper}/bin/artisan webpush:vapid
          echo "" >> ${cfg.dataDir}/.env
          echo -n "NODE_ID=" >> ${cfg.dataDir}/.env
          ${phpPackage}/bin/php -r "echo uniqid();" >> ${cfg.dataDir}/.env
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
          ${phpPackage}/bin/php ${package}/scripts/rrdstep.php -h all
          echo "${boolToString cfg.enableOneMinutePolling}" > ${cfg.dataDir}/one_minute_enabled
        fi

        # migrate db
        ${phpPackage}/bin/php ${package}/includes/sql-schema/update.php
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
        path = "${makeBinPath [ phpPackage (pkgs.python3.withPackages pythonPackages) ]}:${config.system.path}/bin:${config.system.path}/sbin";
      in [
        # based on crontab provided by LibreNMS
        "33 */6 * * * ${cfg.user} PATH=${path} ${package}/cronic ${package}/discovery-wrapper.py 1"
        "*/5 * * * * ${cfg.user} PATH=${path} ${package}/discovery.php -h new >> /dev/null 2>&1"

        "${if cfg.enableOneMinutePolling then "*" else "*/5"} * * * * ${cfg.user} PATH=${path} ${package}/cronic ${package}/poller-wrapper.py ${toString cfg.pollerThreads}"
        "* * * * * ${cfg.user} PATH=${path} ${package}/alerts.php >> /dev/null 2>&1"

        "*/5 * * * * ${cfg.user} PATH=${path} ${package}/poll-billing.php >> /dev/null 2>&1"
        "01 * * * * ${cfg.user} PATH=${path} ${package}/billing-calculate.php >> /dev/null 2>&1"
        "*/5 * * * * ${cfg.user} PATH=${path} ${package}/check-services.php >> /dev/null 2>&1"

        # extra: fast ping
        "* * * * * ${cfg.user} PATH=${path} ${package}/ping.php >> /dev/null 2>&1"

        # daily.sh tasks are split to exclude update
        "19 0 * * * ${cfg.user} PATH=${path} ${package}/daily.sh cleanup >> /dev/null 2>&1"
        "19 0 * * * ${cfg.user} PATH=${path} ${package}/daily.sh notifications >> /dev/null 2>&1"
        "19 0 * * * ${cfg.user} PATH=${path} ${package}/daily.sh peeringdb >> /dev/null 2>&1"
        "19 0 * * * ${cfg.user} PATH=${path} ${package}/daily.sh mac_oui >> /dev/null 2>&1"
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
      "f ${cfg.dataDir}/config.php                   0600 ${cfg.user} ${cfg.group} - -"
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

{ pkgs, stdenv, lib, fetchFromGitHub, python310Packages, unixtools, php82
, dataDir ? "/var/lib/librenms", logDir ? "/var/log/librenms" }:

let
  package = (import ./composition.nix {
    inherit pkgs;
    inherit (stdenv.hostPlatform) system;
    noDev = true; # Disable development dependencies
    php = php82;
  });

in package.override rec {
  name = pname + "-" + version;
  pname = "librenms";
  version = "23.5.0";

  src = fetchFromGitHub {
    owner = "librenms";
    repo = pname;
    rev = "${version}";
    hash = "sha256-IdlOI5PfzBssBBgNeMowgQ08at9o5E+sW0RwW0plEYM=";
  };

  buildInputs = [ unixtools.whereis ];

  postInstall = ''
    rm -rf $out/logs $out/rrd $out/bootstrap/cache $out/storage $out/.env
    ln -s ${logDir} $out/logs
    ln -s ${dataDir}/config.php $out/config.php
    ln -s ${dataDir}/.env $out/.env
    ln -s ${dataDir}/rrd $out/rrd
    ln -s ${dataDir}/storage $out/storage
    ln -s ${dataDir}/cache $out/bootstrap/cache
  '';

  meta = with lib; {
    description = "A auto-discovering PHP/MySQL/SNMP based network monitoring.";
    homepage    = "https://github.com/librenms/librenms";
    license     = licenses.gpl3Only;
    maintainers = with maintainers; [ netali ];
    platforms   = platforms.linux;
  };
}

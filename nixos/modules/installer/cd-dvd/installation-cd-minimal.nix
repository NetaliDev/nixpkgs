# This module defines a small NixOS installation CD.  It does not
# contain any graphical stuff.

{ lib, ... }:

{
  imports = [
    ../../profiles/minimal.nix
    ./installation-cd-base.nix
  ];

  # Causes a lot of uncached builds for a negligible decrease in size.
  environment.noXlibs = lib.mkOverride 500 false;

  documentation.man.enable = lib.mkOverride 500 true;

  # Although we don't really need HTML documentation in the minimal installer,
  # not including it may cause annoying cache misses in the case of the NixOS manual.
  documentation.doc.enable = lib.mkOverride 500 true;

  fonts.fontconfig.enable = lib.mkForce false;

  networking.hostName = "netalis-nixos-iso";

  services.openssh.enable = true;
  services.openssh.settings.PasswordAuthentication = false;
  users.users.nixos.openssh.authorizedKeys.keys = [ "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOV4f3/OcNQIHqomvH0nGLDmXDlrO/u7JKE9Fgq2Vuqs me@netali.de" ];

  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "de-latin1";
  };

  isoImage.edition = lib.mkForce "minimal";
}

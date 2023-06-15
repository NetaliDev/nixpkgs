import ../make-test-python.nix ({ pkgs, lib, ... }:

let
  localUsernameCryptTest = "crypttest1";
  localPasswordCryptTest = "topsecretlocaluserpassword123";

  rootPassword = "topsecretrootpassword123456";
in
{
  name = "pam_mount";
  meta.maintainers = with lib.maintainers; [ netali ];

  nodes.machine =
    { ... }:
    {

      users.users.root.password = rootPassword;

      users.users.${localUsernameCryptTest} = {
        isNormalUser = true;
        password = localPasswordCryptTest;
      };

      security.pam.mount = {
        enable = true;
        extraVolumes = [
        ''
          <volume user="netali" fstype="crypt" path="/opt/crypttest.luks" mountpoint="/mnt/crypttest" options="crypto_name=crypt0,allow_discard,fstype=ext4" />
        ''
      ];
    createMountPoints = true;
      };

      environment.systemPackages = [ pkgs.cryptsetup ];

    };

  testScript = ''
    def switch_to_tty(tty_number):
        machine.fail(f"pgrep -f 'agetty.*tty{tty_number}'")
        machine.send_key(f"alt-f{tty_number}")
        machine.wait_until_succeeds(f"[ $(fgconsole) = {tty_number} ]")
        machine.wait_for_unit(f"getty@tty{tty_number}.service")
        machine.wait_until_succeeds(f"pgrep -f 'agetty.*tty{tty_number}'")


    def try_login(tty_number, username, password):
        machine.wait_until_tty_matches(tty_number, "login: ")
        machine.send_chars(f"{username}\n")
        machine.wait_until_tty_matches(tty_number, f"login: {username}")
        machine.wait_until_succeeds("pgrep login")
        machine.wait_until_tty_matches(tty_number, "Password: ")
        machine.send_chars(f"{password}\n")

    def init_crypt_disk(path, crypt_name, password):
        machine.send_chars("clear\n")
        machine.send_chars(f"truncate -s 100M {path}\n")
        machine.wait_for_file(f"{path}")

        machine.send_chars(f"cryptsetup luksFormat {path}\n")
        machine.send_chars("YES\n")
        machine.wait_until_tty_matches("1", "Enter passphrase for")
        machine.send_chars(f"{password}\n")
        machine.wait_until_tty_matches("1", "Verify passphrase:")
        machine.send_chars(f"{password}\n")
        machine.wait_until_fails("pgrep cryptsetup")

        machine.send_chars(f"cryptsetup luksOpen {path} {crypt_name}\n")
        machine.wait_until_tty_matches("1", "Enter passphrase for")
        machine.send_chars(f"{password}\n")
        machine.wait_until_fails("pgrep cryptsetup")

        machine.send_chars("clear\n")

        machine.send_chars(f"mkfs.ext4 /dev/mapper/{crypt_name}\n")
        machine.wait_until_tty_matches("1", "Writing superblocks and filesystem")

        machine.send_chars(f"mount /dev/mapper/{crypt_name} /mnt/cryptinit\n")
        machine.send_chars(f"echo '{crypt_name}' > /mnt/cryptinit/crypt_name\n")
        machine.wait_for_file("/mnt/cryptinit/crypt_name")
        machine.send_chars("umount /mnt/cryptinit\n")

        machine.send_chars(f"cryptsetup close {crypt_name}\n")
        machine.wait_until_fails("pgrep cryptsetup")


    machine.wait_for_unit("multi-user.target")
    machine.wait_until_succeeds("pgrep -f 'agetty.*tty1'")

    try_login("1", "root", "${rootPassword}")
    machine.send_chars("mkdir -p /opt\n")
    machine.send_chars("mkdir -p /mnt/cryptinit\n")

    init_crypt_disk("/opt/crypttest.luks", "crypt1", "${localPasswordCryptTest}")
    init_crypt_disk("/opt/crypttest1.luks", "crypt2", "${localPasswordCryptTest}")
    machine.send_chars("echo hi\n")

    #with subtest("Local login"):
    #    switch_to_tty("2")
    #    try_login("2", "${localUsernameCryptTest}", "${localPasswordCryptTest}")

    #    machine.wait_until_succeeds("pgrep -u ${localUsernameCryptTest} bash")
    #    machine.send_chars("id > local_id.txt\n")
    #    machine.wait_for_file("/home/${localUsernameCryptTest}/local_id.txt")
    #    machine.succeed("cat /home/${localUsernameCryptTest}/local_id.txt | grep 'uid=1000(${localUsernameCryptTest}) gid=100(users) groups=100(users)'")

    #with subtest("Local incorrect login"):
    #    switch_to_tty("3")
    #    try_login("3", "${localUsernameCryptTest}", "wrongpassword")

    #    machine.wait_until_tty_matches("3", "Login incorrect")
    #    machine.wait_until_tty_matches("3", "login:")
    '';
})

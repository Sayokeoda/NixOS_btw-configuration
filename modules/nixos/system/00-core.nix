{ config, pkgs, lib, ... }:

{
  time.timeZone = "Europe/Madrid";

  console.keyMap = "es";

  # Bootloader para UEFI con systemd-boot
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Opciones de kernel y seguridad básicas
  networking.firewall.enable = true;
  networking.firewall.allowedTCPPorts = [ 22 ];
}

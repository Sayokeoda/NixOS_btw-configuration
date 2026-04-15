{ config, pkgs, lib, ... }:

{
  imports = [
    ../../modules/nixos/roles/laptop.nix
    ../../profiles/nixos/minimal.nix
    ./hardware.nix
  ];

  networking.hostName = "Nixos_btw";

  users.users.Sayokeoda = {
    isNormalUser = true;
    extraGroups = [ "wheel" "audio" "video" ];
    home = "/home/Sayokeoda";
  };

  # Opcional: si quieres habilitar sudo sin contraseña para wheel (ajusta si no)
  security.sudo.wheelNeedsPassword = true;
}

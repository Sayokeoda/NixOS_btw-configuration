{ config, pkgs, lib, ... }:

{
  # Este archivo define la "personalidad" de un laptop.
  imports = [
    ../system/00-core.nix
    ../desktop/10-wayland.nix
  ];

  # Opciones típicas de laptop
  services.tlp.enable = true;
  hardware.pulseaudio.enable = false;
  services.pipewire.enable = true;

  # Marca de estado para evitar sorpresas al actualizar
  system.stateVersion = "24.11";
}

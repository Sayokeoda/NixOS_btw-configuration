{ config, pkgs, lib, ... }:

{
  # Paquetes del sistema para entorno Wayland
  environment.systemPackages = with pkgs; [
    foot
    neovim
    waybar
    rofi-wayland
    grim
    mako
    pipewire
    wireplumber
    xdg-desktop-portal-wlr
    pamixer
    gammastep
  ];

  services.pipewire.enable = true;
  services.mako.enable = true;
  services.xdg-desktop-portal.enable = true;

  # No se colocan dotfiles aquí; Home Manager los desplegará.
}

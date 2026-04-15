{ config, pkgs, lib, ... }:

{
  # Paquetes del sistema para entorno Wayland
  environment.systemPackages = with pkgs; [
    foot
    neovim
    waybar
    rofi-wayland
    grim
    slurp
    wl-clipboard
    mpv
    imv
    firefox
    vlc
    mako
    pipewire
    wireplumber
    xdg-desktop-portal-wlr
    brightnessctl
    pamixer
    gammastep
  ];

  services.pipewire.enable = true;
  services.mako.enable = true;
  services.xdg-desktop-portal.enable = true;

  # No se colocan dotfiles aquí; Home Manager los desplegará.
}

{ config, pkgs, lib, ... }:

{
  # Perfil mínimo que pueden importar hosts
  environment.systemPackages = with pkgs; [
    git
    curl
    wget
    vim
  ];

  # Locales y teclado básicos
  i18n.defaultLocale = "es_ES.UTF-8";
  console.keyMap = "es";
}

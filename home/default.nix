{ pkgs, ... }:

let dot = ./dotfiles; in
{
  home.username = "Sayokeoda";
  home.homeDirectory = "/home/Sayokeoda";

  # No incluimos el contenido de los dotfiles aquí; solo los importamos
  # Crea los archivos en home/dotfiles/ y Home Manager los enlazará.
  xdg.configFile."foot/foot.ini".source = dot + "/foot/foot.ini";
  xdg.configFile."niri/config.kdl".source = dot + "/niri/config.kdl";
  xdg.configFile."waybar/config".source = dot + "/waybar/config";
  xdg.configFile."rofi/config.rasi".source = dot + "/rofi/config.rasi";
  xdg.configFile."mpv/mpv.conf".source = dot + "/mpv/mpv.conf";

  # Systemd user services mínimos (ejemplo, puedes añadir más)
  systemd.user.services.cliphist = {
    description = "cliphist daemon";
    wantedBy = [ "default.target" ];
    serviceConfig.ExecStart = "${pkgs.cliphist}/bin/cliphist daemon";
  };

  home.packages = with pkgs; [ neovim foot mpv ];
}

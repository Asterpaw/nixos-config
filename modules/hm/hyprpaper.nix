{ config, pkgs, ... }:

{
  services.hyprpaper = {
    enable = true;

    settings = {
      preload = [ "/home/avalon/.config/hypr/wallpapers/bubble-fruit.png" ];
      wallpaper = [ ",/home/avalon/.config/hypr/wallpapers/bubble-fruit.png" ];
    };
  };
}

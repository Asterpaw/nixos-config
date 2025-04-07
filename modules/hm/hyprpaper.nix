{ config, pkgs, ... }:

{
  services.hyprpaper = {
    enable = true;

    settings = {
      preload = [ "/home/river/.config/hypr/wallpapers/bubble-fruit.png" ];
      wallpaper = [ ",/home/river/.config/hypr/wallpapers/bubble-fruit.png" ];
    };
  };
}

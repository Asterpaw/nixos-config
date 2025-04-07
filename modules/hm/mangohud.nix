{ config, pkgs, ... }:

{
  programs.mangohud = {
    enable = true;

    settings = {
      fps_only = true;
      background_alpha = 0;
    };
  };
}

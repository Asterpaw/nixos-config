{ config, pkgs, ... }:

{
  services.mako = {
    enable = true;

    actions = true;
    anchor = "bottom-right";
    backgroundColor = "#181825";
    borderSize = 2;
    borderRadius = 6;
    borderColor = "#8fbcbb";
    textColor = "#d8dee9";
    defaultTimeout = 10000;
    ignoreTimeout = true;
    maxIconSize = 64;
    maxVisible = 10;
    markup = true;
    icons = true;
    font = "FiraCode Nerd Font 12";
    height = 110;
    width = 300;
    sort = "-time";
    layer = "overlay";
    padding = "10";
    progressColor = "over #a3be8c";

    extraConfig = ''
      [urgency=high]
      border-color=#bf616a
    '';
  };
}

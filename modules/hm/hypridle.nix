{ config, pkgs, ... }:

{
  services.hypridle = {
    enable = true;

    settings = {
      listener = [
        {
          timeout = 300;
          on-timeout = "brightnessctl -s set 10";
          on-resume = "brightnessctl -r";
        }
      ];
    };
  };
}

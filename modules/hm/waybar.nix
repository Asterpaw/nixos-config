{ config, pkgs, ... }:

{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "bottom";
        margin-bottom = 10;
        height = 40;
        width = 1280;

        modules-left = [ "hyprland/workspaces" ];
        modules-right = [ "tray" "group/audio" "network" "battery" "custom/wlogout" "clock" ];

        "hyprland/workspaces" = {
          format = "{icon}";
          format-icons = {
            active = "";
            default = "";
          };
          persistent-workspaces = {
            "*" = 5;
          };
        };

        "tray" = {
          icon-size = 20;
          spacing = 12;
          reverse-direction = true;
        };

        "group/audio" = {
          orientation = "horizontal";
          drawer = {
            transition-duration = 600;
            transition-left-to-right = true;
          };
          modules = [
            "custom/audio-icon"
            "pulseaudio/slider"
            "pulseaudio"
          ];
        };

        "custom/audio-icon" = {
          format = "";
          tooltip-format = "Volume";
        };

        "pulseaudio" = {
          format = "{volume}%  -  {desc}";
          tooltip-format = "pavucontrol";
          on-click = "pavucontrol";
          scroll-step = 0;
        };

        "network" = {
          format-ethernet = "";
          format-wifi = "󰖩";
          format-disconnected = "";
          tooltip-format-ethernet = "Ethernet";
          tooltip-format-wifi = "{signalStrength}%  -  {essid}";
          on-click = "nm-connection-editor";
        };

        "battery" = {
          format = "{icon}";
          format-icons = [ "" "" "" "" "" ];
          tooltip-format = "{capacity}%  -  {timeTo}";
        };

        "custom/wlogout" = {
          format = "";
          tooltip-format = "wlogout";
          on-click = "wlogout --protocol layer-shell -b 4 -L 710 -R 710 -T 580 -B 580";
        };

        "clock" = {
          format = "{:%d %b - %H:%M}";
          tooltip = false;
        };
      };
    };


    style = ''
      * {
        font-family: Symbols Nerd Font Mono;
        font-size: 16px;
      }
      window#waybar {
        background: #181825;
        color: #d8dee9;
        border: none;
        border-radius: 6px;
      }
      tooltip {
        background: #181825;
        border: none;
        border-radius: 6px;
      }
      tooltip label {
        color: #d8dee9;
      }
      #workspaces {
        margin-left: 12px;
        margin-top: 2px;
      }
      #workspaces button {
        color: #d8dee9;
      }
      #workspaces button:hover {
        box-shadow: none;
        text-shadow: none;
        background: none;
        transition: none;
      }
      #tray {
        margin-right: 20px;
      }
      #custom-audio-icon {
        font-size: 17px;
        margin-right: 5px;
      }
      #pulseaudio-slider trough {
        min-width: 100px;
        background-color: black;
      }
      #pulseaudio {
        margin-right: 4px;
        margin-left: 4px;
      }
      #network {
        font-size: 15px;
        margin-right: 5px;
        margin-left: 8px;
      }
      #battery {
        font-size: 17px;
        margin-right: 8px;
        margin-left: 8px;
      }
      #custom-wlogout {
        font-size: 15px;
        margin-left: 7px;
        margin-right: 7px;
      }
      #clock {
        margin-left: 14px;
        margin-right: 18px;
        margin-top: 2px;
      }
    '';
  };
}

{ config, pkgs, ... }:

{
  programs.wlogout = {
    enable = true;

    layout = [
      {
        label = "logout";
        action = "hyprctl dispatch exit 0";
        text = " ";
      }
      {
        label = "lock";
        action = "hyprlock";
        text = " ";
      }
      {
        label = "shutdown";
        action = "systemctl poweroff";
        text = " ";
      }
      {
        label = "reboot";
        action = "systemctl reboot";
        text = " ";
      }
    ];

    style = ''
      * {
        background-image: none;
      }
      window {
      	background-color: transparent;
      }
      button {
          color: #181825;
      	font-size: 16px;
      	background-color: #181825;
        border: 0px solid;
        border-color: #d8dee9;
        border-radius: 20px;
        margin: 5px;
      	background-repeat: no-repeat;
      	background-position: center;
      	background-size: 35%;
      	text-shadow: 0px 0px;
      	box-shadow: 0px 0px;
      }

      button:focus, button:active, button:hover {
      	background-color: #8fbcbb;
      	outline-style: none;
      }

      #lock {
          background-image: image(url("/home/river/.config/wlogout/icons/lock.png"));
      }

      #logout {
          background-image: image(url("/home/river/.config/wlogout/icons/logout.png"));
      }

      #shutdown {
          background-image: image(url("/home/river/.config/wlogout/icons/shutdown.png"));
      }

      #reboot {
          background-image: image(url("/home/river/.config/wlogout/icons/reboot.png"));
      }
    '';
  };
}

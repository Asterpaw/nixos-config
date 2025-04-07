{ config, pkgs, ... }:

{
  imports = [
    ../modules/hm/hyprland.nix
    ../modules/hm/hyprlock.nix
    ../modules/hm/hypridle.nix
    ../modules/hm/hyprpaper.nix
    ../modules/hm/waybar.nix
    ../modules/hm/theme.nix
    ../modules/hm/rofi.nix
    ../modules/hm/mako.nix
    ../modules/hm/wlogout.nix
    ../modules/hm/kitty.nix
    ../modules/hm/mangohud.nix
  ];

  home.file = {
    ".config/hypr/wallpapers/bubble-fruit.png" = {
      source = ../dotfiles/assets/bubble-fruit.png;
    };

    ".config/rofi/images/battle.jpg" = {
      source = ../dotfiles/assets/battle.jpg;
    };

    ".config/wlogout/icons/lock.png" = {
      source = ../dotfiles/assets/lock.png;
    };

    ".config/wlogout/icons/logout.png" = {
      source = ../dotfiles/assets/logout.png;
    };

    ".config/wlogout/icons/reboot.png" = {
      source = ../dotfiles/assets/reboot.png;
    };

    ".config/wlogout/icons/shutdown.png" = {
      source = ../dotfiles/assets/shutdown.png;
    };

    ".config/hmkdeglobals" = {
      source = ../dotfiles/kdeglobals;
      onChange = ''
        rm -f $HOME/.config/kdeglobals
        cp $HOME/.config/hmkdeglobals $HOME/.config/kdeglobals
        chmod u+w $HOME/.config/kdeglobals
      '';
    };
  };

  programs.git = {
    enable = true;
    userName = "River";
    userEmail = "gayfurrykisser47@proton.me";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };

  home = {
    username = "avalon";
    homeDirectory = "/home/avalon";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}

{ config, pkgs, ... }:

{
  imports = [
    ../modules/system/hardware-configuration.nix
    ../modules/system/polkit-gnome.nix
    ../modules/system/virt-manager.nix
    ../modules/system/hyprland.nix
    ../modules/system/greetd.nix
    ../modules/system/dolphin.nix
    ../modules/system/lact.nix
    ../modules/system/steam.nix
    ../modules/system/udev.nix
    ../modules/system/obs.nix
    ../modules/system/qt.nix
  ];

  time.timeZone = "America/Los_Angeles";
  i18n.defaultLocale = "en_US.UTF-8";

  networking = {
    networkmanager.enable = true;
    firewall.enable = true;

    hostName = "sofanthiel";
  };

  security = {
    rtkit.enable = true;
    polkit.enable = true;
  };

  services = {
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };

    dbus.enable = true;
    libinput.enable = true;

    udisks2 = {
      enable = true;
      mountOnMedia = true;
    };

    xserver.enable = true;

    mullvad-vpn = {
      enable = true;
      package = pkgs.mullvad-vpn;
      enableExcludeWrapper = false;
    };

    flatpak.enable = true;
  };

  programs = {
    dconf.enable = true;
    zsh.enable = true;
  };

  boot = {
    loader = {
      systemd-boot.enable = true;
      efi = {
        canTouchEfiVariables = true;
      };
    };

    kernelPackages = pkgs.linuxPackages_zen;
  };

  users = {
    users.avalon = {
      isNormalUser = true;
      description = "avalon";
      extraGroups = [ "networkmanager" "wheel" "input" ];
    };

    defaultUserShell = pkgs.zsh;
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    git
    vim
    kitty
    htop
    fastfetch
    waybar
    rofi-wayland
    mako
    libnotify
    wlogout
    volantes-cursors
    grim
    slurp
    wl-clipboard
    pavucontrol
    brightnessctl
    networkmanagerapplet
    hyprpaper
    hyprpicker
    unzip
    p7zip
    kdePackages.partitionmanager
    wineWowPackages.waylandFull
    winetricks
    librewolf-bin
    chromium
    vesktop
    krita
    yt-dlp
    ffmpeg-full
    imagemagick
    vlc
    feh
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.fira-code
    nerd-fonts.symbols-only
    nerd-fonts.jetbrains-mono
    font-awesome
  ];

  environment.sessionVariables = {
    XCURSOR_THEME = "volantes_cursors";
    XCURSOR_SIZE = "24";
  };

  swapDevices = [ {
    device = "/var/lib/swapfile";
    size = 16*1024;
  } ];

  system.stateVersion = "24.05";
}

{ config, pkgs, ... }:

{
  programs.kitty = {
    enable = true;

    extraConfig = ''
      font_family FiraCode Nerd Font
      font_size 12

      shell_integration no-rc
      confirm_os_window_close 0
      enable_audio_bell no

      dynamic_background_opacity yes
      background_opacity 0.95
    '';
  };
}

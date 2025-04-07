{ config, pkgs, ... }:

{
  programs.hyprlock = {
    enable = true;

    extraConfig = ''
      $text_color = rgb(d8dee9)
      $outer_color = rgba(0, 0, 0, 0)
      $inner_color = rgb(1e1e2e)
      $check_color = rgb(d08770)
      $fail_color = rgb(bf616a)
      $font_family = FiraCode Nerd Font
      $font_symbols = Symbols Nerd Font Mono

      background {
          path = /home/river/.config/hypr/wallpapers/bubble-fruit.png
          blur_passes = 2
          contrast = 1
          brightness = 0.7
          vibrancy = 0.2
          vibrancy_darkness = 0.2
      }

      general {
          hide_cursor = false
          ignore_empty_input = true
      }

      input-field {
          monitor =
          size = 250, 50
          outline_thickness = 2
          dots_size = 0.1
          dots_spacing = 0.3
          outer_color = $outer_color
          inner_color = $inner_color
          font_color = $text_color
          check_color = $check_color
          fail_color = $fail_color
          placeholder_text =

          position = 0, 20
          halign = center
          valign = center
      }

      label { # Clock
          monitor =
          text = $TIME
          color = $text_color
          font_size = 160
          font_family = $font_family

          position = 0, 300
          halign = center
          valign = center
      }
      label { # Greeting
          monitor =
          text = Hello, $USER
          color = $text_color
          font_size = 20
          font_family = $font_family

          position = 0, 150
          halign = center
          valign = center
      }
      label { # lock icon
          monitor =
          text = 󰌾
          color = $text_color
          font_size = 22
          font_family = $font_symbols

          position = 0, 85
          halign = center
          valign = bottom
      }
      label { # "Locked" text
          monitor =
          text = Locked
          color = $text_color
          font_size = 14
          font_family = $font_family

          position = 0, 45
          halign = center
          valign = bottom
      }
    '';
  };
}

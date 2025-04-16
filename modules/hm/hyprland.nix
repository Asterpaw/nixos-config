{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;

    extraConfig = ''
      monitor=DP-1, 2560x1440@240, 0x0, 1, bitdepth, 10

      $terminal = kitty
      $fileManager = dolphin
      $menu = rofi -show drun
      $lock = wlogout --protocol layer-shell -b 4 -L 710 -R 710 -T 580 -B 580

      exec-once = hyprpaper
      exec-once = hypridle
      exec-once = hyprlock
      exec-once = waybar
      exec-once = mako
      exec-once = mullvad-vpn

      windowrule = suppressevent maximize, class:.
      windowrule = immediate, class:^(steam_app_322170)$

      input {
        kb_layout = us
        follow_mouse = 1
        sensitivity = 0
        accel_profile = flat
      }

      cursor {
        no_hardware_cursors = true
      }

      render {
        explicit_sync = 1
        explicit_sync_kms = 1
        direct_scanout = 1
      }

      misc {
        disable_hyprland_logo = true
        disable_splash_rendering = true
        vfr = true
        vrr = 1
      }

      general {
        gaps_in = 5
        gaps_out = 10
        border_size = 3
        col.active_border = rgb(8fbcbb)
        col.inactive_border = rgb(181825)

        layout = master
        no_focus_fallback = true

        allow_tearing = true
      }

      master {
        mfact = 0.5
      }

      decoration {
        rounding = 6
        active_opacity = 0.95
        inactive_opacity = 0.95

        blur {
          enabled = true
          size = 5
          passes = 2
          vibrancy = 0.1696
          xray = true
        }

        shadow {
          enabled = false
        }
      }

      animations {
        enabled = true
        bezier = 1, 0.23, 1, 0.32, 1
        animation = windows, 1, 5, 1
        animation = windowsIn, 1, 5, 1, slide
        animation = windowsOut, 1, 5, 1, slide
        animation = border, 1, 5, 1
        animation = borderangle, 1, 15, 1, once
        animation = fade, 1, 5, default
        animation = workspaces, 1, 5, 1, slidefade 30%
      }

      $mainMod = SUPER

      bind = $mainMod, F1, exec, brightnessctl s 5%-
      bind = $mainMod, F2, exec, brightnessctl s +5%

      bind = $mainMod, S, exec, grim -g "$(slurp -d)" - | wl-copy

      bind = $mainMod, Q, exec, $terminal
      bind = $mainMod, E, exec, $fileManager
      bind = $mainMod, R, exec, $menu
      bind = $mainMod, L, exec, $lock
      bind = $mainMod, V, togglefloating
      bind = $mainMod, F, fullscreen
      bind = $mainMod, C, killactive
      bind = $mainMod, M, exit

      bind = $mainMod, left, movefocus, l
      bind = $mainMod, right, movefocus, r
      bind = $mainMod, up, movefocus, u
      bind = $mainMod, down, movefocus, d

      bind = $mainMod, 1, workspace, 1
      bind = $mainMod, 2, workspace, 2
      bind = $mainMod, 3, workspace, 3
      bind = $mainMod, 4, workspace, 4
      bind = $mainMod, 5, workspace, 5

      bind = $mainMod SHIFT, 1, movetoworkspace, 1
      bind = $mainMod SHIFT, 2, movetoworkspace, 2
      bind = $mainMod SHIFT, 3, movetoworkspace, 3
      bind = $mainMod SHIFT, 4, movetoworkspace, 4
      bind = $mainMod SHIFT, 5, movetoworkspace, 5

      bind = $mainMod, Tab, togglespecialworkspace, magic
      bind = $mainMod SHIFT, Tab, movetoworkspace, special:magic

      bindm = $mainMod, mouse:272, movewindow
      bindm = $mainMod, mouse:273, resizewindow
    '';
  };
}

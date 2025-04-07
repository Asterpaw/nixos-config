{ config, pkgs, ... }:

{
  home.file = {
    ".config/rofi/config.rasi".text = ''
      configuration {
      	modi:                       "drun";
          show-icons:                 true;
          display-drun:               "";
          display-run:                "";
          display-filebrowser:        "";
          display-window:             "";
      	drun-display-format:        "{name} [<span weight='light' size='small'><i>({generic})</i></span>]";
      	window-format:              "{w}   {c}   {t}";
      }

      * {
          font:                        "FiraCode Nerd Font 10";
      }

      window {
          transparency:                "real";
          location:                    center;
          anchor:                      center;
          fullscreen:                  false;
          width:                       950px;
          x-offset:                    0px;
          y-offset:                    0px;
          enabled:                     true;
          margin:                      0px;
          padding:                     0px;
          border:                      3px;
          border-radius:               20px;
          border-color:                #8fbcbb;
          cursor:                      "default";
          background-color:            #181825;
          background-image:            url("/home/river/.config/rofi/images/battle.jpg");
      }

      mainbox {
          enabled:                     true;
          spacing:                     20px;
          padding:                     30px;
          background-color:            transparent;
          children:                    [ "inputbar", "listview" ];
      }

      inputbar {
          enabled:                     true;
          spacing:                     0px;
          margin:                      0px 400px 0px 0px;
          padding:                     20px;
          border:                      0px;
          border-radius:               20px;
          border-color:                #d8dee9;
          background-color:            #181825;
          children:                    [ "textbox-prompt-colon", "entry" ];
      }

      textbox-prompt-colon {
          enabled:                     true;
          expand:                      false;
          padding:                     8px 8px 8px 11px;
          border-radius:               8px;
          background-color:            #d8dee9;
          text-color:                  #181825;
          str:                         " ";
      }
      entry {
          enabled:                     true;
          padding:                     8px 12px;
          border:                      0px;
          background-color:            transparent;
          text-color:                  #d8dee9;
          cursor:                      text;
          placeholder:                 "Search...";
          placeholder-color:           inherit;
          vertical-align:              0.5;
          horizontal-align:            0.0;
      }

      listview {
          enabled:                     true;
          columns:                     1;
          lines:                       6;
          cycle:                       true;
          dynamic:                     true;
          scrollbar:                   false;
          layout:                      vertical;
          reverse:                     false;
          fixed-height:                true;
          fixed-columns:               true;
          spacing:                     10px;
          margin:                      0px 400px 0px 0px;
          padding:                     10px;
          border:                      0px;
          border-radius:               20px;
          border-color:                #d8dee9;
          background-color:            #181825;
          cursor:                      "default";
      }

      element {
          enabled:                     true;
          spacing:                     10px;
          margin:                      0px;
          padding:                     5px 10px;
          border:                      0px;
          border-radius:               18px;
          border-color:                #d8dee9;
          background-color:            transparent;
          text-color:                  #d8dee9;
          cursor:                      pointer;
      }
      element selected.normal {
          background-color:            #8fbcbb;
          text-color:                  #d8dee9;
      }
      element normal.normal {
          background-color:            #181825;
          text-color:                  #d8dee9;
      }
      element alternate.normal {
          background-color:            #181825;
          text-color:                  #d8dee9;
      }
      element-icon {
          background-color:            transparent;
          size:                        32px;
          cursor:                      inherit;
      }
      element-text {
          background-color:            inherit;
          text-color:                  inherit;
          cursor:                      inherit;
          vertical-align:              0.5;
          horizontal-align:            0.0;
      }

      error-message {
          padding:                     20px;
          background-color:            transparent;
          text-color:                  #d8dee9;
      }
      message {
          padding:                     0px;
          background-color:            inherit;
          text-color:                  #d8dee9;
      }
      textbox {
          padding:                     0px;
          border-radius:               0px;
          background-color:            inherit;
          text-color:                  inherit;
          vertical-align:              0.5;
          horizontal-align:            0.0;
      }
    '';
  };
}

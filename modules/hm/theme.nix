{ config, pkgs, ... }:

{
  gtk = {
    enable = true;

    cursorTheme = {
      package = pkgs.volantes-cursors;
      name = "volantes_cursors";
    };

    theme = {
      package = pkgs.nordic;
      name = "Nordic-darker-standard-buttons";
    };

    iconTheme = {
      package = pkgs.nordzy-icon-theme;
      name = "Nordzy-turquoise-dark";
    };
  };

  qt = {
    enable = true;
    platformTheme.name = "qtct";
    style.name = "kvantum";
  };

  xdg.configFile = {
    "Kvantum/kvantum.kvconfig".text = ''
      [General]
      theme=Nordic-Darker-Solid
    '';

    "Kvantum/Nordic-Darker-Solid".source = "${pkgs.nordic}/share/Kvantum/Nordic-Darker-Solid";
  };

  xdg.configFile = {
    "qt5ct/qt5ct.conf".text = ''
      [Appearance]
      icon_theme=Nordzy-turquoise-dark
    '';
  };

  xdg.configFile = {
    "qt6ct/qt6ct.conf".text = ''
      [Appearance]
      icon_theme=Nordzy-turquoise-dark
    '';
  };
}

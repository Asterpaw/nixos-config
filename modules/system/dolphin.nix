{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs.libsForQt5; [
    dolphin
    ark
    qt5.qtimageformats
    ffmpegthumbs
    kde-cli-tools
    kdegraphics-thumbnailers
    kimageformats
    qtsvg
    kio
    kio-extras
    kwayland
    kservice
  ];
}

{ config, pkgs, ... }:

let
  wooting-rules = pkgs.writeTextFile {
    name = "70-wooting.rules";
    text = ''
      SUBSYSTEM=="hidraw", ATTRS{idVendor}=="31e3", TAG+="uaccess"

      SUBSYSTEM=="usb", ATTRS{idVendor}=="31e3", TAG+="uaccess"
    '';
    destination = "/etc/udev/rules.d/70-wooting.rules";
  };
in {
   services.udev.packages = [ wooting-rules ];
}

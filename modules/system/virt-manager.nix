{ config, pkgs, ... }:

{
  virtualisation.libvirtd = {
    enable = true;
    onBoot = "ignore";
    onShutdown = "shutdown";
    qemu = {
      ovmf.enable = true;
      runAsRoot = false;
    };
  };

  users.groups.libvirtd.members = [ "root" "river" ];

  programs.virt-manager.enable = true;

  boot.kernelModules = [ "kvm-amd" ];
}

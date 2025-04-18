{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ nixpkgs, home-manager, ... }: {
    nixosConfigurations = {
      sofanthiel = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./sofanthiel/configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.river = {
              imports = [
                ./sofanthiel/home.nix
              ];
            };
          }
        ];
      };
    };
  };
}

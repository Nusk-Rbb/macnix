{
  description = "My nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    darwin.url = "github:lnl7/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    inputs@{
      nixpkgs,
      home-manager,
      darwin,
      ...
    }:
    {
      darwinConfigurations.M2-MacBook-Pro = darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        modules = [
          ./modules/darwin
          home-manager.darwinModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.nusk.imports = [ ./modules/home-manager ];
            };
          }
        ];
      };
    };
}

{
  description = "Flake base NixOS modular con Btrfs - esqueleto";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
  };

  outputs = { self, nixpkgs, home-manager, ... }:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
  in {
    nixosConfigurations = {
      laptop = pkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./hosts/laptop/default.nix
          home-manager.nixosModules.home-manager
        ];
      };
    };
  };
}

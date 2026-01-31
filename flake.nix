{
  description = "My system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager }: let
    system = "x86_64-linux";
    stateVersion = "25.11";
    username = "tenk";
    hostname = "nixos";
  in {
    nixosConfigurations.${hostname} = nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = { inherit stateVersion hostname username; };
      modules = [
        ./hosts/${hostname}/configuration.nix
        home-manager.nixosModules.home-manager {
          home-manager = {
            extraSpecialArgs = { inherit stateVersion username; };
            users.${username} = ./home-manager/home.nix;
          };
        }
      ];
    };
  };
}

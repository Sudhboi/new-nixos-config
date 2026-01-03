{
  description = "My second NixOS config";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # Zen Browser
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs = {
	nixpkgs.follows = "nixpkgs";
	home-manager.follows = "home-manager";
      };
    };
  };

  outputs = {self, nixpkgs, home-manager, ... }: 
    let 
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {

    nixosConfigurations = {
      nixos = lib.nixosSystem {
        inherit system;
	modules = [ ./system/configuration.nix ];
      };
    };

    homeConfigurations = {
      sudhirk = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
	modules = [ ./user/home.nix ];
	extraSpecialArgs = { inherit inputs; };
      };
    };
  };
}


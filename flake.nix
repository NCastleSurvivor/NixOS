{
  description = "ZERO's NixOS Flake";

  # Inputs
  inputs = {
	# nixpkgs.url = "nixpkgs/master";
	nixpkgs.url = "nixpkgs/nixos-unstable/";
	nur.url = "github:nix-community/NUR";
	home-manager = {
		url = "github:nix-community/home-manager";
		inputs.nixpkgs.follows = "nixpkgs";
	};
  };
  # Work-in-progress: refer to parent/sibling flakes in the same repository
  # inputs.c-hello.url = "path:../c-hello";

  outputs = { self, nixpkgs, home-manager, nur, ... }: 
	(let
		system = "x86_64-linux";
	in {
		nixosConfigurations.zero = nixpkgs.lib.nixosSystem {
		inherit system;
		modules = [
			./configuration/system.nix
			./configuration/server.nix	
			./configuration/software.nix
			./configuration/users.nix	
			./configuration/desktop/plasma.nix
			# ./configuration/desktop/gnome.nix

		home-manager.nixosModules.home-manager
			{
			home-manager.useGlobalPkgs = true;
			home-manager.useUserPackages = true;
			home-manager.users.zero = import ./configuration/home.nix;
			}
		nur.nixosModules.nur
	          ({ config, ... }: {
            		 imports = [
               			./configuration/programs/install-nur.nix
             			];})

			];
		};

	  });
}

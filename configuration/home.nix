{ config, pkgs, ... }:
{
	imports = [
		./programs/home-user.nix		
	];

	programs.home-manager.enable = true;
	home.username = "zero";
	home.homeDirectory = "/home/zero";
	home.stateVersion = "24.05";
	
	fonts.fontconfig.enable = true;
	
	# My git account settings
	programs.git = {
		enable = true;
		userName = "NCastleSurvivor";
		userEmail = "1439345229@qq.com";
		};

}

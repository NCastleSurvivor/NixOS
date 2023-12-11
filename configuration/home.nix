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
	#programs.git = {
	#	enable = true;
	#	userName = "";
	#	userEmail = "";
	#	};
	
	# Manager home dotfiles
	#xdg = {
	#	enable = true;
	#	userDirs.enable = true;
	#	configFile = {};
	# };
	
	# alacritty
	programs.alacritty = {
		enable =true;
		settings = {
			env.TERM = "xterm-256color";
			font = {
				size = 10;
				draw_bold_text_with_bright_colors = true;
			};
		scrolling.multiplier = 5;
		selection.save_to_clipboard = true;
		};
	};
	
}

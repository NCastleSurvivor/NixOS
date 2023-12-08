{ config, pkgs, lib, ... }:
{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
		git
		vim 
    		wget
    	       #	wpsoffice-cn
    		#qq
    		#vscode
    		tree
		android-tools
    		alacritty
    		ntfs3g
    		pciutils
    		papirus-icon-theme
    		zsh
  	];

  	nix.settings.substituters = [ "https://mirror.sjtu.edu.cn/nix-channels/store" ];
  	#nix.settings.substituters = [ "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store" ];
  
}

{ pkgs, ... }:
{
  #imports = [
   # ../desktop/theme/default.nix
  #];
  
  home.packages = with pkgs; [
    	firefox
    	brave
	thunderbird
	qq
	tree
	which
	htop
	vscode
    	neofetch
	typora
    # environment settings
	jetbrains.idea-ultimate
    # wpsoffice-cn
    	onlyoffice-bin
    # libreoffice-fresh

  ];
}


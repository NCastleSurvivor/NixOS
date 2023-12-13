{ pkgs, ... }:
{
  #imports = [
   # ../desktop/theme/default.nix
  #];
  
  home.packages = with pkgs; [
  firefox
	thunderbird
	qq
	tree
	which
	htop
	vscode
  neofetch
    # environment settings
	jdk8
	jetbrains.idea-ultimate
  onlyoffice-bin

  ];
}


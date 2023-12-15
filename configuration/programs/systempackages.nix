{ config, pkgs, lib, ... }:
{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
   git
   vim
   typora	
   wget
   android-tools
   ntfs3g
   pciutils
   papirus-icon-theme
   zsh
   alacritty
  	];
  
}

# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, ... }:
{
	fonts = lib.mkForce {
    	enableDefaultPackages = false;
    	fontconfig.enable = true;
    	fontDir.enable = true;
	packages = with pkgs; [
      		# (nerdfonts.override { fonts = [ "Iosevka" ]; })
      		sarasa-gothic
      		twemoji-color-font
    		];
    	fontconfig.defaultFonts = {
      			serif  = [ "Sarasa Gothic SC regular" ];
      			sansSerif = [ "Sarasa Gothic SC regular" ];
      			monospace = [ "Iosevka Regular" ];
      			emoji = [ "Twitter Color Emoji Regular" ];
    		};
  	};
}

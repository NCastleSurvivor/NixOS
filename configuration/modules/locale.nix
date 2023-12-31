# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, ... }:
{
 	# Configure keymap in X11
 	services.xserver = {
		layout = "cn";
    		xkbVariant = "";
  		};
  	# Set your time zone.
  	time.timeZone = "Asia/Shanghai";

  	# Select internationalisation properties.
  	i18n.defaultLocale = "zh_CN.UTF-8";

  	i18n.extraLocaleSettings = {
    		LC_ADDRESS = "zh_CN.UTF-8";
    		LC_IDENTIFICATION = "zh_CN.UTF-8";
    		LC_MEASUREMENT = "zh_CN.UTF-8";
    		LC_MONETARY = "zh_CN.UTF-8";
    		LC_NAME = "zh_CN.UTF-8";
    		LC_NUMERIC = "zh_CN.UTF-8";
    		LC_PAPER = "zh_CN.UTF-8";
    		LC_TELEPHONE = "zh_CN.UTF-8";
    		LC_TIME = "zh_CN.UTF-8";
  	};
  
  	i18n.inputMethod = {
		enabled = "fcitx5";
		fcitx5.addons = with pkgs; [
			fcitx5-rime
			fcitx5-chinese-addons
		];
	};
	

}

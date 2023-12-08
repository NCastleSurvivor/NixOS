{ config, pkgs, lib, ... }:
{
	# Bootloader.
	#boot.loader.systemd-boot.enable = true;
	#boot.loader.efi.canTouchEfiVariables = true;
	boot.kernelParams = [
		"loglevel=0"
		"quiet"	
		];
	boot.loader = {
		efi.efiSysMountPoint = "/boot/efi";
		timeout = 2;
		grub = {
			enable = true;
			efiSupport = true;
			device = "nodev";
			configurationName = "NixOS";
			useOSProber = true;
			efiInstallAsRemovable = true;
		};
  	};
}

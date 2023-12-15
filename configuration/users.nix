{ config, pkgs, lib, ... }:
{
  	# Enable cups support
  	services.printing.enable = false;
  	# Enable touchpad support (enabled default in most desktopManager).
  	# services.xserver.libinput.enable = true;

	  # Define a user account. Don't forget to set a password with ‘passwd’.
  	users = {
		defaultUserShell = pkgs.zsh;
		users.zero = {
    		isNormalUser = true;
    		description = "zero";
    		extraGroups = [ "networkmanager" "wheel" "adbusers" ];
    		packages = with pkgs; [
      			firefox
      			# kate #依赖konsole,导致无法卸载konsole
    		];
  	};
	};
}

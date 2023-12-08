{ config, pkgs, lib, ... }:
{
	imports = [
		./server/network.nix
		./server/bluetooth.nix
      		./server/bootloader.nix
      		./server/sound.nix
		./modules/nvidia.nix
      		./modules/locale.nix
	];
	nix.settings.substituters = [ "https://mirror.sjtu.edu.cn/nix-channels/store" ];
  	#nix.settings.substituters = [ "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store" ];
}

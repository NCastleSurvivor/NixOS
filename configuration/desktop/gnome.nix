{ lib, pkgs, config, ...}:
{
  services.xserver ={
    enable = true;
    displayManager.gdm = {
      enable = true;
      wayland = true;
    };
    desktopManager.gnome.enable = true;
  };
  environment.gnome.excludePackages = (with pkgs; [
    gnome-photos
    gnome-tour
  ]) ++ (with pkgs.gnome; [
    cheese # webcam tool
    gnome-music
    gnome-terminal
    gedit # text editor
    epiphany # web browser
    geary # email reader
    evince # document viewer
    gnome-characters
    totem # video player
    tali # poker game
    iagno # go game
    hitori # sudoku game
    atomix # puzzle game
  ]);
  environment.systemPackages =  (with pkgs.gnomeExtensions;[ 
    blur-my-shell
    clipboard-indicator
    coverflow-alt-tab
    dash-to-dock
    user-themes
     ]) ++ (with pkgs; [

     ]);
}
{ config, pkgs, ... }:

{
  users.users.bl = {
    isNormalUser = true;
    description = "bl";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      discord
      drawio
      firefox
      gnome-extension-manager
      gnome.pomodoro
      gnome.gnome-tweaks
      #gnomeExtensions.gtk-title-bar
      gnomeExtensions.just-perfection
      gnomeExtensions.keyman
      google-chrome
      google-drive-ocamlfuse
      #mattermost-desktop
      opam
      pstree
      remmina
      slack
      # steam
      # vscode
      wezterm
      zoom-us
    ];
  };

  programs.steam = {
    enable = true;
    # remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    # de  dicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
  };
}

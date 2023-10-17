{ config, pkgs, ... }:

{
  users.users.bl = {
    isNormalUser = true;
    description = "bl";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      discord
      firefox
      gnome-extension-manager
      gnome.pomodoro
      gnome.gnome-tweaks
      gnomeExtensions.just-perfection
      google-chrome
      google-drive-ocamlfuse
      #mattermost-desktop
      opam
      remmina
      slack
      vscode
      wezterm
      zoom-us
    ];
  };
}

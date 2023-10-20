{ pkgs, ... }:

{
  # font
  fonts = {
    packages = with pkgs; [
      fira-code
      hackgen-font
      noto-fonts
      noto-fonts-cjk-serif
      noto-fonts-cjk-sans
      noto-fonts-emoji
      nerdfonts
      ibm-plex
      ipafont
      ipaexfont
    ];
    fontDir.enable = true;
    fontconfig = {
      defaultFonts = {
        serif = ["Noto Serif CJK JP" "Noto Serif" "Noto Color Emoji"];
        sansSerif = ["Noto Sans CJK JP" "Noto Sans" "Noto Color Emoji"];
        monospace = ["HackGen Console" "JetBrainsMono Nerd Font" "Noto Color Emoji"];
        emoji = ["Noto Color Emoji"];
      };
    };
   };
}

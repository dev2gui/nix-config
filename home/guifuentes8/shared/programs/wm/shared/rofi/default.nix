{ pkgs, ... }:
{
  imports = [
    ./rbw.nix
  ];

  programs.rofi =
    {
      enable = true;
      terminal = "${pkgs.kitty}/bin/kitty";
      font = "JetBrainsMono Nerd Font 13";
      theme = "~/.config/rofi/catppuccin-macchiato.rasi";
      plugins = with pkgs; [
        rofi-emoji
        rofi-rbw
        rofi-calc
        rofi-bluetooth
        rofi-power-menu
        rofi-pulse-select
        rofi-file-browser
        rofi-pass
      ];
    };

  home.packages = with pkgs; [
    rofi-emoji
    rofi-calc
    rofi-bluetooth
    rofi-power-menu
    rofi-pulse-select
    rofi-file-browser
    rofi-pass
  ];

  xdg.configFile."rofi/catppuccin-macchiato.rasi".source = ./catppuccin-macchiato.rasi;

}

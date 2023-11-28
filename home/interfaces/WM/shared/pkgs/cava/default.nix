{ config, lib, pkgs, ... }:
{
  home.packages = [
    pkgs.cava
  ];

  xdg.configFile."cava/config".text = lib.generators.toINI { } {
    general = {
      framerate = 120;
      bar_width = 1;
      bar_spacing = 1;
    };
    input = {
      method = "pulse";
    };
    output = {
      method = "ncurses";
      alacritty_sync = 1;
    };
    color = {
      gradient = 1;
      gradient_count = 8;
      gradient_color_1 = "'#94e2d5'";
      gradient_color_2 = "'#89dceb'";
      gradient_color_3 = "'#74c7ec'";
      gradient_color_4 = "'#89b4fa'";
      gradient_color_5 = "'#cba6f7'";
      gradient_color_6 = "'#f5c2e7'";
      gradient_color_7 = "'#eba0ac'";
      gradient_color_8 = "'#f38ba8'";

    };
    smoothing = {
      # noise_reduction = 0.77;
      monstercat = 1;
      waves = 0;
    };
  };
}

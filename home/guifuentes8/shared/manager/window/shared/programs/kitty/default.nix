{
  programs.kitty = {
    enable = true;
    font = {
      name = "JetBrainsMono Nerd Font";
    };
    settings = {
      bold_font = "auto";
      italic_font = "auto";
      bold_italic_font = "auto";
      background_opacity = "0.85";
      confirm_os_window_close = 0;
      initial_window_width = 640;
      initial_window_height = 400;

      # Nightfox colors for Kitty
      ## name: carbonfox
      ## upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/carbonfox/nightfox_kitty.conf

      background = "#161616";
      foreground = "#f2f4f8";
      selection_background = "#2a2a2a";
      selection_foreground = "#f2f4f8";
      cursor_text_color = "#161616";
      url_color = "#25be6a";

      cursor = "#f2f4f8";

      active_border_color = "#78a9ff";
      inactive_border_color = "#535353";
      bell_border_color = "#3ddbd9";

      active_tab_background = "#78a9ff";
      active_tab_foreground = "#0c0c0c";
      inactive_tab_background = "#2a2a2a";
      inactive_tab_foreground = "#6e6f70";

      color0 = "#282828";
      color1 = "#ee5396";
      color2 = "#25be6a";
      color3 = "#08bdba";
      color4 = "#78a9ff";
      color5 = "#be95ff";
      color6 = "#33b1ff";
      color7 = "#dfdfe0";

      color8 = "#484848";
      color9 = "#f16da6";
      color10 = "#46c880";
      color11 = "#2dc7c4";
      color12 = "#8cb6ff";
      color13 = "#c8a5ff";
      color14 = "#52bdff";
      color15 = "#e4e4e5";

      color16 = "#3ddbd9";
      color17 = "#ff7eb6";
    };
  };
}

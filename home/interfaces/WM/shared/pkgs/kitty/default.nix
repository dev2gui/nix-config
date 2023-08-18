{ config, ... }: {
  programs.kitty = {
    enable = true;
    font = {
      name = "JetBrainsMonoNL Nerd Font";
      size = 13;
    };
    settings = {

      # The basic colors
      foreground = "#${config.colorScheme.colors.base0E}";
      background = "#${config.colorScheme.colors.base01}";
      selection_foreground = "#${config.colorScheme.colors.base01}";
      selection_background = "#${config.colorScheme.colors.base0E}";

      # Cursor colors
      cursor = "#${config.colorScheme.colors.base00}";
      cursor_text_color = "#${config.colorScheme.colors.base01}";

      # URL underline color when hovering with mouse
      url_color = "#${config.colorScheme.colors.base0E}";

      # Kitty window border colors
      active_border_color = "#${config.colorScheme.colors.base03}";
      inactive_border_color = "#${config.colorScheme.colors.base03}";
      bell_border_color = "#${config.colorScheme.colors.base0A}";

      # Tab bar colors
      active_tab_foreground = "#${config.colorScheme.colors.base04}";
      active_tab_background = "#${config.colorScheme.colors.base0E}";
      inactive_tab_foreground = "#${config.colorScheme.colors.base07}";
      inactive_tab_background = "#${config.colorScheme.colors.base04}";
      tab_bar_background = "#${config.colorScheme.colors.base04}";

      # Colors for marks (marked text in the terminal)
      mark1_foreground = "#${config.colorScheme.colors.base01}";
      mark1_background = "#${config.colorScheme.colors.base03}";
      mark2_foreground = "#${config.colorScheme.colors.base01}";
      mark2_background = "#${config.colorScheme.colors.base0E}";
      mark3_foreground = "#${config.colorScheme.colors.base01}";
      mark3_background = "#${config.colorScheme.colors.base0D}";

      # The 16 terminal colors

      # black
      color0 = "#${config.colorScheme.colors.base05}";
      color8 = "#${config.colorScheme.colors.base05}";

      # red
      color1 = "#${config.colorScheme.colors.base08}";
      color9 = "#${config.colorScheme.colors.base08}";

      # green
      color2 = "#${config.colorScheme.colors.base09}";
      color10 = "#${config.colorScheme.colors.base09}";

      # yellow
      color3 = "#${config.colorScheme.colors.base0A}";
      color11 = "#${config.colorScheme.colors.base0A}";

      # blue
      color4 = "#${config.colorScheme.colors.base0B}";
      color12 = "#${config.colorScheme.colors.base0B}";

      # magenta
      color5 = "#${config.colorScheme.colors.base0E}";
      color13 = "#${config.colorScheme.colors.base0E}";

      # cyan
      color6 = "#${config.colorScheme.colors.base0D}";
      color14 = "#${config.colorScheme.colors.base0D}";

      # white
      color7 = "#${config.colorScheme.colors.base07}";
      color15 = "#${config.colorScheme.colors.base07}";

      bold_font = "auto";
      italic_font = "auto";
      bold_italic_font = "auto";
      background_opacity = "0.8";
      confirm_os_window_close = 0;
      initial_window_width = 640;
      initial_window_height = 400;
    };
  };
}

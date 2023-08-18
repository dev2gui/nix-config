{ pkgs, config, ... }:
let
  alert = pkgs.writeShellScript "alert.sh" ''
    pw-play --volume=0,04 ~/nix-config/home/interfaces/WM/xorg/pkgs/dunst/alert.wav
  '';
in
{
  services.dunst = {
    enable = true;
    package = pkgs.dunst;
    iconTheme.size = "128x128";
    iconTheme.package = pkgs.colloid-icon-theme;
    iconTheme.name = "Adwaita";
    settings = {
      global = {
        width = 600;
        height = 300;
        font = "JetBrainsMonoNL Nerd Font 12";
        corner_radius = 8;
        origin = "bottom-right";
        notification_limit = 0;
        frame_width = 2;
        separator_color = "frame";
        min_icon_size = 64;
        max_icon_size = 64;
        offset = "80x80";
      };
      urgency_low = {
        background = "#${config.colorScheme.colors.base01}";
        foreground = "#${config.colorScheme.colors.base00}";
        frame_color = "#${config.colorScheme.colors.base0E}";
      };
      urgency_normal = {
        background = "#${config.colorScheme.colors.base01}";
        foreground = "#${config.colorScheme.colors.base00}";
        frame_color = "#${config.colorScheme.colors.base0E}";
        timeout = 5;
      };

      urgency_critical = {
        background = "#${config.colorScheme.colors.base01}";
        foreground = "#${config.colorScheme.colors.base08}";
        frame_color = "#${config.colorScheme.colors.base08}";
      };
      play_sound = {
        summary = "*";
        script = "${alert}";
      };
    };
  };
}


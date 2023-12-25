{ outputs, pkgs, nix-colors, config, ... }:
let
  my_config = outputs.packages.${pkgs.system}.my_config;
in
{
  imports = [
    ./shared
    ./pkgs/1-xorg
  ];

  xsession.windowManager.bspwm = {
    enable = true;
    alwaysResetDesktops = true;
    startupPrograms = [
      "pkill -USR1 -x sxhkd"
      "sxhkd"
      "picom"
      "systemctl --user restart polybar.service"
      "feh --bg-max --randomize ${my_config}/share/wallpapers/5120/* --image-bg '#353b48'"
      "pkill dunst"
      "dunst"
      "xsetroot -cursor_name 'everforest-cursors'"
    ];
    extraConfig = ''
      bspc monitor -d 󰲡 󰲣 󰲥 󰲧 󰲩 󰲫 󰲭 󰲯 󰲱  
        
      bspc config border_width         3
      bspc config window_gap           10

      bspc config split_ratio          0.50
      bspc config borderless_monocle   true
      bspc config gapless_monocle      true

      bspc config normal_border_color '#${config.colorScheme.colors.base05}'
      bspc config active_border_color '#${config.colorScheme.colors.base05}'
      bspc config focused_border_color '#${config.colorScheme.colors.base0B}'
      bspc config presel_feedback_color '#${config.colorScheme.colors.base08}'

      bspc config focus_follows_pointer true
      bspc config pointer_follows_focus true
    '';
  };
}

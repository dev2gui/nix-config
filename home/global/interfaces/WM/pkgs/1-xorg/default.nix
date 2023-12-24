{ outputs, pkgs, ... }:
let
in
{
  imports = [
    ./mpv
    ./picom
    ./polybar
    ./screen-lock
    ./sxhkd
  ];

  services = {
    flameshot.enable = true;
  };

  home.packages = with pkgs; [

    discord
    flameshot
    lxappearance
    xdotool
    xclip
    xcolor
  ];
}

{ unstable, pkgs, outputs, ... }:
{
  imports = [
    ./foot
    ./mpv
    ./waybar
    ./wpaperd
  ];

  home.packages = with unstable; [
    grim
    hyprpicker
    nwg-look
    slurp
    swaylock
    swayidle
    swayimg
    wl-clipboard
    wf-recorder
    wtype
    webcord
  ];

  programs.rofi.package = pkgs.rofi-wayland;

}

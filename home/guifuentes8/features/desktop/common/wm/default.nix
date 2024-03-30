{ pkgs, ... }: {
  imports = [
    ./rofi
    ./alacritty.nix
    ./dunst.nix
    ./kitty.nix
    ./pavucontrol.nix
    ./playerctl.nix
    ./qutebrowser.nix
    ./systemd.nix
    ./xdg.nix
  ];

}

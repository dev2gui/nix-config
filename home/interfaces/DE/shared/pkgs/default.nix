{ pkgs, ... }:
{
  imports = [
    ./firefox
  ];
  home.packages = with pkgs; [
    bitwarden
    spotify
  ];
}

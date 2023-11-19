{ pkgs, ... }:
{
  home.packages = with pkgs;[
    ranger
    highlight
    file
    librsvg
    libcaca
    lynx
  ];
  xdg.configFile."ranger/rc.conf".source = ./rc.conf;
  xdg.configFile."ranger/rifle.conf".source = ./rifle.conf;
  xdg.configFile."ranger/scope.sh".source = ./scope.sh;
}

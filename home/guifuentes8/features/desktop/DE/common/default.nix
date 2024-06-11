{ pkgs, unstable, ... }:

{
  imports = [ ./chromium.nix ./firefox.nix ./wezterm.nix ];

  programs = { obs-studio.enable = true; };

  services = {
    caffeine.enable = true;
    kdeconnect = {
      enable = true;
      indicator = true;
    };
    nextcloud-client = {
      enable = true;
      startInBackground = true;
    };
  };

  home.packages = [
    pkgs.bitwarden
    pkgs.beeper
    pkgs.discord
    pkgs.gimp
    pkgs.onlyoffice-bin
    pkgs.warp-terminal
    pkgs.zoom-us

    pkgs.ventoy-bin
    pkgs.appimage-run
    pkgs.ffmpeg
    pkgs.pciutils
    pkgs.pulseaudio
    pkgs.unrar
    pkgs.unzip

    pkgs.chafa
    pkgs.imagemagick
    pkgs.ffmpegthumbnailer
    pkgs.poppler_utils
    pkgs.gnome-epub-thumbnailer
    pkgs.fontpreview
    pkgs.xdotool
    pkgs.xorg.xprop

  ];

  home.file.".local/share/warp-terminal/themes/tokyo_night_storm.yml".source =
    ./tokyo_night_storm.yml;

}

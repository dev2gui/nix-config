{ pkgs, ... }: {
  # imports = [ ./accounts.nix ];

  programs = {
    bat = {
      enable = true;
      extraPackages = with pkgs.bat-extras; [ batdiff batman batgrep batwatch ];
      #    config.theme = "catppuccin";
    };
    bottom = {
      enable = true;
      settings = { };
    };
    feh.enable = true;
    khal.enable = true;
    jq.enable = true;
    lsd.enable = true;
    rtorrent.enable = true;
    translate-shell.enable = true;
    yt-dlp.enable = true;
    yazi = {
      enable = true;
      package = pkgs.yazi;
      enableZshIntegration = true;
      keymap = { };
      settings = { };
      theme = { };
    };
  };

  home.packages = with pkgs; [
    dipc # palette wallpaper converter
    cmatrix # matrix
    devour # hide terminal
    epr # E-pub reader
    girouette # Weather
    pastel # color cli
    slides # presentation slides
    tuifeed
    speedtest-rs # Networking test
    tgpt # chatgpt
    tty-clock # clock
  ];

  xdg.configFile."tuifeed/config.toml".source =
    (pkgs.formats.toml { }).generate "config.toml" {
      sources = {
        Diolinux = "https://plus.diolinux.com.br/c/diolinux-feed/15.rss";
        Diolinux_Noticias =
          "https://plus.diolinux.com.br/c/noticias-tecnologia/20.rss";
      };
    };
}

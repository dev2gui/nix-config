{ pkgs, ... }:
{

  home.packages = with pkgs; [
    pinentry-gnome
  ];

  programs.rbw = {
    enable = true;
    package = pkgs.rbw;
    settings = {
      email = "guifuentes8@gmail.com";
      lock_timeout = 1000;
      pinentry = "gnome3";
      action = "type";
      target = "username";
      prompt = "Search: ";
      selector = "rofi";
      clipboarder = "xclip";
      typer = "xdotool";
    };
  };

}



{ pkgs, ... }: {
  services.gvfs.enable = true;
  services.tumbler.enable = true; # Thumbnail support for images
  programs.xfconf.enable = true;

  programs = {
    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
        thunar-media-tags-plugin
      ];
    };
  };

}

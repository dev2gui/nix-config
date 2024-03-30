{ pkgs, unstable, lib, outputs, theme, nix-colors, ... }:
let
  icon-pkg = pkgs.catppuccin-papirus-folders.override {
    accent = "teal";
    flavor = "macchiato";
  };

  icon-name = "Papirus";
in {
  gtk = {
    iconTheme = {
      name = icon-name;
      package = icon-pkg;
    };
  };

}


{ inputs, pkgs, ... }:
{
  imports = [
    inputs.hyprland.nixosModules.default
  ];
  programs = {
    hyprland.enable = true;
  };

  nix.settings = {
    substituters = [ "https://hyprland.cachix.org" ];
    trusted-public-keys = [ "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc=" ];
  };

  environment.systemPackages = (with pkgs; [
    xdg-utils
  ]);

  xdg.portal = {
    enable = true;
    config.common.default = "*";
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
    ];
  };

}

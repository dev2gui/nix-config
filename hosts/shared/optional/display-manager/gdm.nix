{ outputs, pkgs, ... }:
{
  services.xserver.displayManager.gdm = {
        enable = true;
    };
}

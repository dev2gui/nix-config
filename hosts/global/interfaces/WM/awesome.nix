{ config, ... }:
{
  services.xserver = {
    enable = true;
    windowManager.awesome = {
      enable = true;
      # luaModules = ;
    };
  };
}

{ config, pkgs, inputs, outputs, ... }:
{
  imports = [

    # HARDWARE ----------------------------------------

    # Hardware config
    ./hardware-configuration.nix

    # Hardware Gpu (if exist)
    ../shared/hardware/gpu/nvidia.nix

    # Extra Hardware config
    ../shared/hardware/keychron.nix
    # ../shared/hardware/logitech.nix

    # NIXOS CONFIG ------------------------------------

    # shared NixOs Config 
    ../shared

    # Boot initial (grub or systemd)
    ../shared/boot/grub.nix

    # Login Manager
    ../shared/login/lightdm.nix

    # Choice Interface (WM and/or DE)
    ../shared/interfaces/WM/xorg/bspwm
    ../shared/interfaces/WM/xorg/qtile
    ../shared/interfaces/WM/xorg/awesome

    # Active services
    ../shared/services/firewall.nix
    ../shared/services/gnome-keyring.nix
    ../shared/services/kdeconnect.nix
    ../shared/services/teamviewer.nix

    # User 
    ../shared/users/guifuentes8.nix

  ];

  # SYSTEM CONFIGS --------------------------------------

  # Basic config
  console.keyMap = "br-abnt2";
  time.timeZone = "America/Sao_Paulo";
  time.hardwareClockInLocalTime = true;

  # Network config (nmtui)
  networking.hostName = "desktop";
  networking.networkmanager.enable = true;

  # Sound Service (Pipewire)
  sound.enable = true;
  security.rtkit.enable = true;
  hardware.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  # Xorg
  services.xserver = {
    enable = true;
    layout = "br,us";
  };

  # SYSTEM OPTIONS ----------------------------------------

  system = {
    stateVersion = "23.05";
    autoUpgrade = {
      enable = false;
      allowReboot = false;
      dates = "daily";
    };
  };

  programs = {
    ssh.startAgent = true;
    dconf.enable = true;
  };

  environment = {
    pathsToLink = [ "/libexec" "/etc" ];
    variables = {
      XCURSOR_THEME = "Catppuccin-Mocha-Dark";
      XCURSOR_SIZE = "32";
    };
    sessionVariables = rec {
      XDG_CACHE_HOME = "\${HOME}/.cache";
      XDG_CONFIG_HOME = "\${HOME}/.config";
      XDG_BIN_HOME = "\${HOME}/.local/bin";
      XDG_DATA_HOME = "\${HOME}/.local/share";
      PATH = [
        "\${XDG_BIN_HOME}"
      ];
      TZ = "America/Sao_Paulo";
    };
  };

}

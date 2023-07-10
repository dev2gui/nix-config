{ config, pkgs, inputs, outputs, ... }:
{
  imports = [

    # HARDWARE ----------------------------------------

    # Hardware config
    ./hardware-configuration.nix

    # Hardware Gpu (if exist)
    #../global/config/hardware/nvidia.nix
    ../global/config/hardware/amdgpu.nix

    # Extra Hardware config
    ../global/config/hardware/keychron.nix


    # NIXOS CONFIG ------------------------------------

    # Global NixOs Config 
    ../global

    # Boot initial (grub or systemd)
    ../global/config/boot/systemd-boot.nix

    # Login Manager
    ../global/config/login/lightdm.nix

    # Choice Interface (WM and/or DE)
    ../global/interfaces/DE/kde
    ../global/interfaces/DE/gnome


    # Active services
    ../global/config/services/gnome-keyring.nix
    ../global/config/services/python.nix


    # User 
    ../global/users/guifuentes8.nix

  ];

  # SYSTEM CONFIGS --------------------------------------

  # Basic config
  boot.loader.efi.efiSysMountPoint = "/boot/efi";
  console.keyMap = "us";
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
    layout = "us";
  };

  # SYSTEM OPTIONS ----------------------------------------

  system = {
    stateVersion = "23.05";
    autoUpgrade = {
      enable = true;
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
      XCURSOR_THEME = "Bibata-Modern-Ice";
      XCURSOR_SIZE = "24";
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

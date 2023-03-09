{ pkgs, ... }: {
  services.polybar = {
    enable = true;
    package = pkgs.polybar.override {
      i3Support = true;
      alsaSupport = true;
      iwSupport = true;
      githubSupport = true;
    };
    script = "polybar example &";
    extraConfig = ''
          ;==========================================================
      ;
      ;
      ;   ██████╗  ██████╗ ██╗  ██╗   ██╗██████╗  █████╗ ██████╗
      ;   ██╔══██╗██╔═══██╗██║  ╚██╗ ██╔╝██╔══██╗██╔══██╗██╔══██╗
      ;   ██████╔╝██║   ██║██║   ╚████╔╝ ██████╔╝███████║██████╔╝
      ;   ██╔═══╝ ██║   ██║██║    ╚██╔╝  ██╔══██╗██╔══██║██╔══██╗
      ;   ██║     ╚██████╔╝███████╗██║   ██████╔╝██║  ██║██║  ██║
      ;   ╚═╝      ╚═════╝ ╚══════╝╚═╝   ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
      ;
      ;
      ;   To learn more about how to configure Polybar
      ;   go to https://github.com/polybar/polybar
      ;
      ;   The README contains a lot of information
      ;
      ;==========================================================

      [colors]
      background = #282A2E
      background-alt = #373B41
      foreground = #C5C8C6
      primary = #F0C674
      secondary = #8ABEB7
      alert = #A54242
      disabled = #707880

      [bar/example]
      width = 100%
      height = 24pt
      radius = 0

      ; dpi = 96

      background = #282A2E
      foreground = #C5C8C6

      line-size = 3pt

      border-size = 0pt
      border-color = #00000000

      padding-left = 0
      padding-right = 1

      module-margin = 1

      separator = |
      separator-foreground = #707880

      font-0 = monospace;2

      modules-left = xworkspaces xwindow
      modules-right = filesystem pulseaudio xkeyboard memory cpu wlan eth date

      cursor-click = pointer
      cursor-scroll = ns-resize

      enable-ipc = true

       tray-position = right

      ; wm-restack = generic
      ; wm-restack = bspwm
      ; wm-restack = i3

      ; override-redirect = true

      [module/xworkspaces]
      type = internal/xworkspaces

      label-active = %name%
      label-active-background = #373B41
      label-active-underline= #F0C674
      label-active-padding = 1

      label-occupied = %name%
      label-occupied-padding = 1

      label-urgent = %name%
      label-urgent-background = #A54242
      label-urgent-padding = 1

      label-empty = %name%
      label-empty-foreground = #707880
      label-empty-padding = 1

      [module/xwindow]
      type = internal/xwindow
      label = %title:0:60:...%

      [module/filesystem]
      type = internal/fs
      interval = 25

      mount-0 = /

      label-mounted = %{F#F0C674}%mountpoint%%{F-} %percentage_used%%

      label-unmounted = %mountpoint% not mounted
      label-unmounted-foreground = #707880

      [module/pulseaudio]
      type = internal/pulseaudio

      format-volume-prefix = "VOL "
      format-volume-prefix-foreground = #F0C674
      format-volume = <label-volume>

      label-volume = %percentage%%

      label-muted = muted
      label-muted-foreground = #707880

      [module/xkeyboard]
      type = internal/xkeyboard
      blacklist-0 = num lock

      label-layout = %layout%
      label-layout-foreground = #F0C674

      label-indicator-padding = 2
      label-indicator-margin = 1
      label-indicator-foreground = #282A2E
      label-indicator-background = #8ABEB7

      [module/memory]
      type = internal/memory
      interval = 2
      format-prefix = "RAM "
      format-prefix-foreground = #F0C674
      label = %percentage_used:2%%

      [module/cpu]
      type = internal/cpu
      interval = 2
      format-prefix = "CPU "
      format-prefix-foreground = #F0C674
      label = %percentage:2%%

      [network-base]
      type = internal/network
      interval = 5
      format-connected = <label-connected>
      format-disconnected = <label-disconnected>
      label-disconnected = %{F#F0C674}%ifname%%{F#707880} disconnected

      [module/wlan]
      inherit = network-base
      interface-type = wireless
      label-connected = %{F#F0C674}%ifname%%{F-} %essid% %local_ip%

      [module/eth]
      inherit = network-base
      interface-type = wired
      label-connected = %{F#F0C674}%ifname%%{F-} %local_ip%

      [module/date]
      type = internal/date
      interval = 1

      date = %H:%M
      date-alt = %Y-%m-%d %H:%M:%S

      label = %date%
      label-foreground = #F0C674

      [settings]
      screenchange-reload = true
      pseudo-transparency = true

      ; vim:ft=dosini
    '';
  };
}

{
  services.sxhkd = {
    enable = true;
    keybindings = {

      # Print

      "Print" = "flameshot gui";

      # terminal emulator
      "super + Return" = "kitty";

      # program launcher
      "super + d" = "rofi -modes 'drun' -show-icons -show drun";

      # change wallpaper
      # "super + w" = "feh --recursive --bg-fill --randomize ~/.config/wallpapers/images/5120x1440/";
      "super + w" = "bash ~/nix-config/home/guifuentes8/shared/manager/window/xorg/programs/xgifwallpaper/change-wallpaper.sh change";

      # make sxhkd reload its configuration files:
      "super + alt + BackSpace" = "pkill -USR1 -x sxhkd";

      #
      # bspwm hotkeys
      #

      # quit/restart bspwm
      "super + Escape" = "bspc quit";

      "super + alt + r" = "bspc wm -r";

      # close and kill
      "super + {_,shift + }q" = "bspc node -{c,k}";

      # alternate between the tiled and monocle layout
      "super + m" = "bspc desktop -l next";

      # send the newest marked node to the newest preselected node
      "super + y" = "bspc node newest.marked.local -n newest.!automatic.local";

      # swap the current node and the biggest window
      "super + g" = "bspc node -s biggest.window";

      #
      # state/flags
      #

      # set the window state
      "super + {t,shift + t,s,f}" = "bspc node -t {tiled,pseudo_tiled,floating,fullscreen}";

      # set the node flags
      "super + ctrl + {m,x,y,z}" = "bspc node -g {marked,locked,sticky,private}";

      #
      # focus/swap
      #

      # focus the node in the given direction
      "super + {_,shift + }{h,j,k,l}" = "bspc node -{f,s} {west,south,north,east}";

      # focus the node for the given path jump
      "super + {p,b,comma,period}" = "bspc node -f @{parent,brother,first,second}";

      # focus the next/previous window in the current desktop
      "super + {_,shift + }c" = "bspc node -f {next,prev}.local.!hidden.window";

      # focus the next/previous desktop in the current monitor
      "super + bracket{left,right}" = "bspc desktop -f {prev,next}.local";

      # focus the last node/desktop
      "super + {grave,Tab}" = "bspc {node,desktop} -f last";

      # focus the older or newer node in the focus history
      "super + {o,i}" = "bspc wm -h off; \
			bspc node {older,newer} -f; \
			bspc wm -h on";

      # focus or send to the given desktop
      "super + {_,shift + }{1-9,0}" = "bspc {desktop -f,node -d} '^{1-9,10}'";

      #
      # preselect
      #

      # preselect the direction
      "super + ctrl + {h,j,k,l}" = "bspc node -p {west,south,north,east}";

      # preselect the ratio
      "super + ctrl + {1-9}" = "bspc node -o 0.{1-9}";

      # cancel the preselection for the focused node
      "super + ctrl + space" = "bspc node -p cancel";

      # cancel the preselection for the focused desktop
      "super + ctrl + shift + space" = "bspc query -N -d | xargs -I id -n 1 bspc node id -p cancel";

      #
      # move/resize
      #

      # expand a window by moving one of its side outward
      "super + alt + {h,j,k,l}" = "bspc node -z {left -20 0,bottom 0 20,top 0 -20,right 20 0}";

      # contract a window by moving one of its side inward
      "super + alt + shift + {h,j,k,l}" = "bspc node -z {right -20 0,top 0 20,bottom 0 -20,left 20 0}";

      # move a floating window
      "super + {Left,Down,Up,Right}" = "bspc node -v {-20 0,0 20,0 -20,20 0}";


      # Increase volume
      "XF86AudioRaiseVolume" = "pactl set-sink-volume @DEFAULT_SINK@ +1000";

      # Decrease volume
      "XF86AudioLowerVolume" = "pactl set-sink-volume @DEFAULT_SINK@ -1000";

      # Mute volume
      "XF86AudioMute" = "pactl set-sink-mute @DEFAULT_SINK@ toggle";

      # Mute microphone
      "XF86AudioMicMute" = "pactl set-source-mute @DEFAULT_SOURCE@ toggle";

      "XF86MonBrightnessDown" = "brightnessctl set 5%-";
      "XF86MonBrightnessUp" = "brightnessctl set 5%+";

      "XF86AudioPlay" = "playerctl play-pause";
      "XF86AudioNext" = "playerctl next";
      "XF86AudioPrev" = "playerctl previous";

      # Rofi keys



      # Filebrowser
      "super + F5" = "rofi -modes 'file-browser-extended' -show file-browser-extended";

      # Input Device Audio
      "super + F6" = "rofi-pulse-select source";

      # Output Device Audio
      "super + F7" = "rofi-pulse-select sink";

      # Emoji
      "super + F8" = "rofi -modi emoji -show emoji";

      # Calc
      "super + F9" = "rofi -show calc -modi calc -no-show-match -no-sort -kb-accept-entry 'Control+c' -calc-command ' echo - n '{ result }' | xclip -sel copy'";

      # Bitwarden
      "super + F10" = "rofi-rbw";

      # Emoji
      "super + F11" = "rofi-bluetooth";

      # Power Menu
      "super + F12" = "rofi -show p -modi p:rofi-power-menu -lines 6";
    };
  };
}

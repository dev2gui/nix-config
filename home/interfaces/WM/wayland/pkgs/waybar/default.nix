{ pkgs, config, ... }:
{
  programs.waybar = {
    enable = true;
    package = pkgs.waybar-hyprland;
    systemd.enable = true;
    style = ''

      * {
          font-family: JetBrainsMonoNL Nerd Font;
          font-weight: bold;
          font-size: 14px;
          min-height: 0;
      }

      window#waybar {
          background-color: rgba(15, 17, 26, 0.5);
          color: #${config.colorScheme.colors.base0E};
      }

      #cpu,
      #memory,
      #disk,
      #temperature,
      #keyboard-state,
      #clock,
      #battery,
      #pulseaudio,
      #network,
      #tray,
      #backlight {
      background: rgba(15, 17, 26, 0);
      padding: 4px 6px;
      margin: 4px 2px;
      }

      #workspaces {
        padding: 0px 4px;
        margin: 4px 4px;
        border-radius: 12px;
      }


      #workspaces button {
        color: #${config.colorScheme.colors.base0E};
        padding: 0px 4px 0px 0px;
        margin: 0px 2px;

      }

      #workspaces button.active {
        color: #${config.colorScheme.colors.base00};
        background-color: #${config.colorScheme.colors.base01};
      }

      #workspaces button.focused {
        color: #${config.colorScheme.colors.base00};
        border-radius: 24px;
      }

      #workspaces button.urgent {
        color: #${config.colorScheme.colors.base02};
        background: #${config.colorScheme.colors.base08};
        border-radius: 10px;
      }

      #workspaces button:hover {
        background-color: #${config.colorScheme.colors.base01};
        color: #${config.colorScheme.colors.base00};
      }
      
      #disk {
        color: #${config.colorScheme.colors.base0E};
      }
      
      #cpu {
        color: #${config.colorScheme.colors.base0E};
      }
      
      #memory {
        color: #${config.colorScheme.colors.base0E};
      }
      
      #temperature {
        color: #${config.colorScheme.colors.base0E};
      }
      
      #keyboard-state {
        color: #${config.colorScheme.colors.base0E};
      }
      
      #network {
        color: #${config.colorScheme.colors.base0E};
      }
      
      #backlight {
        color: #${config.colorScheme.colors.base0E};
      }
      
      #pulseaudio {
        color: #${config.colorScheme.colors.base0E};
      }
      
      #battery {
        color: #${config.colorScheme.colors.base0E};
      }

      #clock {
        color: #${config.colorScheme.colors.base0E};
        margin-right: 12px;
      }

      #tray {
        margin-right: 12px;
      }

      #custom-nix-logo {
        margin-left: 12px;
      }

      #mpris {
        color: #${config.colorScheme.colors.base00};
        margin-left: 12px;
        margin-right: 12px;
      }

       #custom-media {
        color: #${config.colorScheme.colors.base00};
        margin-left: 12px;
        margin-right: 12px;
      }

      #cava {
        color: #${config.colorScheme.colors.base00};
      }
    '';

    settings = [{
      mode = "dock";
      fixed-center = true;
      layer = "top";
      position = "top";
      exclusive = true;
      height = 0;
      modules-left = [ "custom/nix-logo" "sway/workspaces" "wlr/workspaces" "mpris" "cava" ];
      modules-center = [ ];
      modules-right = [ "disk" "cpu" "memory" "temperature" "backlight" "network" "pulseaudio" "battery" "clock" "tray" ];
      "custom/media" = {
        "interval" = 5;
        "format" = "{icon}{}";
        "return-type" = "json";
        "format-icons" = {
          "Playing" = " ";
          "Paused" = " ";
        };
        "max-length" = 120;
        "exec" = "playerctl -a metadata --format '{\"text\": \"{{playerName}}: {{artist}} - {{markup_escape(title)}}\", \"tooltip\": \"{{playerName}} : {{markup_escape(title)}}\", \"alt\": \"{{status}}\", \"class\": \"{{status}}\"}' -F";
        "on-click" = "playerctl play-pause";
      };
      "custom/nix-logo" = {
        "format" = "<span font='16'> </span>";
      };
      "sway/workspaces" = {
        "all-outputs" = true;
        "active-only" = false;
        "on-scroll-up" = "hyprctl dispatch workspace e+1";
        "on-scroll-down" = "hyprctl dispatch workspace e-1";
        "on-click" = "activate";
        "format" = "{icon}";
        "format-icons" = {
          "1" = "<span font='16' rise='1000'>󰲡</span>";
          "2" = "<span font='16' rise='1000'>󰲣</span>";
          "3" = "<span font='16' rise='1000'>󰲥</span>";
          "4" = "<span font='16' rise='1000'>󰲧</span>";
          "5" = "<span font='16' rise='1000'>󰲩</span>";
          "6" = "<span font='16' rise='1000'>󰲫</span>";
          "7" = "<span font='16' rise='1000'>󰲭</span>";
          "8" = "<span font='16' rise='1000'>󰲯</span>";
          "9" = "<span font='16' rise='1000'>󰲱</span>";
          "urgent" = "";
          "active" = "<span font='16' rise='1000'></span>";
          "default" = "";
        };
      };

      "wlr/workspaces" = {
        "all-outputs" = true;
        "active-only" = false;
        "on-scroll-up" = "hyprctl dispatch workspace e+1";
        "on-scroll-down" = "hyprctl dispatch workspace e-1";
        "on-click" = "activate";
        "format" = "{icon}";
        "format-icons" = {
          "1" = "<span font='15' rise='1000'>󰲡</span>";
          "2" = "<span font='15' rise='1000'>󰲣</span>";
          "3" = "<span font='15' rise='1000'>󰲥</span>";
          "4" = "<span font='15' rise='1000'>󰲧</span>";
          "5" = "<span font='15' rise='1000'>󰲩</span>";
          "6" = "<span font='15' rise='1000'>󰲫</span>";
          "7" = "<span font='15' rise='1000'>󰲭</span>";
          "8" = "<span font='15' rise='1000'>󰲯</span>";
          "9" = "<span font='15' rise='1000'>󰲱</span>";
          "urgent" = "";
          "active" = "<span font='15' rise='1000'></span>";
          "default" = "";
        };
      };
      "keyboard-state" = {
        "numlock" = true;
        "capslock" = true;
        "format" = "{icon} {name} ";
        "format-icons" = {
          "locked" = "";
          "unlocked" = "";
        };
      };
      "sway/mode" = {
        "format" = "<span style=\"italic\">{}</span>";
      };
      "sway/scratchpad" = {
        "format" = "{icon} {count}";
        "show-empty" = false;
        "format-icons" = [ "" "" ];
        "tooltip" = true;
        "tooltip-format" = "{app}= {title}";
      };
      "cava" = {
        "framerate" = 60;
        "autosens" = 0;
        "sensitivity" = 10;
        "bars" = 16;
        "lower_cutoff_freq" = 50;
        "higher_cutoff_freq" = 10000;
        "method" = "pulse";
        "source" = "auto";
        "stereo" = true;
        "reverse" = false;
        "bar_delimiter" = 0;
        "monstercat" = true;
        "waves" = false;
        "noise_reduction" = 0.30;
        "input_delay" = 2;
        "format-icons" = [ "▁" "▂" "▃" "▄" "▅" "▆" "▇" "█" ];
        "actions" = {
          "on-click-right" = "mode";
        };
      };
      "mpris" = {
        "format" = "{player_icon} {length} | {title} - {artist}  ";
        "format-paused" = "{status_icon} - {title}";
        max-length = 60;
        interval = 5;
        "player-icons" = {
          "default" = "▶";
          "mpv" = "󰋋 ";
          "spotify_player" = " ";
        };
        "status-icons" = {
          "paused" = "⏸";
        };
        "ignored-players" = [ ];
      };
      "mpd" = {
        "format" = "{stateIcon} {consumeIcon}{randomIcon}{repeatIcon}{singleIcon}{artist} - {album} - {title} ({elapsedTime=%M=%S}/{totalTime=%M=%S}) ⸨{songPosition}|{queueLength}⸩ {volume}% ";
        "format-disconnected" = "Disconnected ";
        "format-stopped" = "{consumeIcon}{randomIcon}{repeatIcon}{singleIcon}Stopped ";
        "unknown-tag" = "N/A";
        "interval" = 2;
        "consume-icons" = {
          "on" = " ";
        };
        "random-icons" = {
          "off" = "<span color=\"#f53c3c\"></span> ";
          "on" = " ";
        };
        "repeat-icons" = {
          "on" = " ";
        };
        "single-icons" = {
          "on" = "1 ";
        };
        "state-icons" = {
          "paused" = "";
          "playing" = "";
        };
        "tooltip-format" = "MPD (connected)";
        "tooltip-format-disconnected" = "MPD (disconnected)";
      };
      "idle_inhibitor" = {
        "format" = "{icon}";
        "format-icons" = {
          "activated" = "";
          "deactivated" = "";
        };
      };
      "tray" = {
        "icon-size" = 21;
        "spacing" = 10;
      };
      "clock" = {
        "timezone" = "America/Sao_Paulo";
        "format" = "{:%H:%M:%S}";
        interval = 1;
        tooltip = true;
        "tooltip-format" = "{:%d/%m/%Y}";
        "format-alt" = "{%d-%m-%y}";
      };
      "disk" = {
        "interval" = 30;
        "format" = " {percentage_used}%";
        "path" = "/";
      };
      "cpu" = {
        interval = 2;
        "format" = " {usage}%";
        "tooltip" = true;
      };
      "memory" = {
        "format" = "󰟁 {}%";
      };
      "temperature" = {
        "thermal-zone" = 2;
        "critical-threshold" = 80;
        "format-critical" = "{icon} {temperatureC}°C";
        "format" = "{icon} {temperatureC}°C";
        "format-icons" = [ "" "" "" ];
      };
      "backlight" = {
        "device" = "acpi_video1";
        "format" = "{icon} {percent}%";
        "format-icons" = [ "" "" "" "" "" "" "" "" "" ];
      };
      "battery" = {
        "states" = {
          "good" = 100;
          "warning" = 30;
          "critical" = 15;
        };
        "format" = "{icon} {capacity}%";
        "format-charging" = " {capacity}%";
        "format-plugged" = " {capacity}%";
        "format-alt" = "{time} {icon}";
        "format-good" = "{icon} {capacity}%";
        "format-full" = "{icon} {capacity}%";
        "format-icons" = [ " " " " " " " " " " ];
      };
      "battery#bat2" = {
        "bat" = "BAT2";
      };
      "network" = {
        # "interface" = "wlp2*";
        "format-wifi" = "  {essid}";
        "format-ethernet" = "󱂇 Connected";
        "tooltip-format" = "{ifname} via {gwaddr}";
        "format-linked" = "{ifname} (No IP)";
        "format-disconnected" = ":/ Disconnected";
        "format-alt" = "{Signal} - {signalStrength}%";
      };
      "pulseaudio" = {
        "scroll-step" = 1;
        "format" = "{icon} {volume}%";
        "format-bluetooth" = "󰋋 {volume}%";
        "format-bluetooth-muted" = "󰟎 {volume}%";
        "format-muted" = "󰖁 {volume}%";
        "format-source" = "";
        "format-source-muted" = "";
        "format-icons" = {
          "headphone" = "󰋋";
          "hands-free" = "";
          "headset" = "";
          "phone" = "";
          "portable" = "";
          "car" = "";
          "default" = [ "" "" "" ];
        };
        "on-click" = "pavucontrol";
      };
    }];

  };

}


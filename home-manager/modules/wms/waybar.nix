{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 40;
        margin = "10 30 0 30";

        modules-left = [
          "custom/logo"
          "hyprland/workspaces"
          "temperature"
          "hyprland/language"
          "idle_inhibitor"
        ];
        modules-center = ["clock"];
        modules-right = [
          "pulseaudio"
          "memory"
          "cpu"
          "network"
          "battery"
          "custom/powermenu"
          "tray"
        ];

        "custom/logo" = {
          format = "󱄅";
          tooltip = false;
        };

        "hyprland/workspaces" = {
          disable-scroll = true;
        };

        "hyprland/language" = {
          format = "{short}";
          tooltip = false;
        };

        idle_inhibitor = {
          format = "{icon}";
          format-icons = {
            activated = "󰈈";
            deactivated = "󰈉";
          };
          tooltip = false;
        };

        pulseaudio = {
          scroll-step = 1;
          format = "{icon} {volume}%";
          format-muted = "󰝟 Muted";
          format-source = "{volume}% 󰍬";
          format-source-muted = "󰍭";
          format-icons = {
            headphone = "󰋋";
            headset = "󰋎";
            default = ["󰕿" "󰖀" "󰕾"];
          };
          on-click = "pavucontrol";
        };

        battery = {
          interval = 10;
          states = {
            warning = 20;
            critical = 10;
          };
          format = "{icon} {capacity}%";
          format-icons = ["󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹"];
          format-charging = "󰂄 {capacity}%";
          tooltip = false;
        };

        clock = {
          interval = 1;
          format = "{:%H:%M %A %b %d}";
          tooltip = false;
        };

        memory = {
          interval = 1;
          format = "  {percentage}%";
          states = {
            warning = 85;
          };
        };

        cpu = {
          interval = 1;
          format = "  {usage}%";
        };

        network = {
          interval = 1;
          ifname = "{ifname}";
          format-wifi = "{essid} ({signalStrenght}%) 󰖩";
          format-ethernet = "󰈁 {ipaddr}/{cidr}";
          format-linked = "{essid} (No IP)";
          format-disconnected = "󰣼 Disconnected";
          tooltip = false;
        };

        temperature = {
          interval = 10;
          format = "{icon} {temperatureC}°C";
          format-icons = ["" "" "" "" ""];
          tooltip = false;
        };

        "custom/powermenu" = {
          format = "";
          menu = "on-click";
          menu-actions = {
            shutdown = "shutdown";
            reboot = "reboot";
            suspend = "systemctl suspend";
            hibernate = "systemctl hibernate";
          };
          tooltip = false;
        };

        tray = {
          icon-size = 16;
          spacing = 10;
        };
      };
    };

    style = ''
      @define-color celtic-blue #3B76CE;
      @define-color YlnMn-blue #2B4D7E;
      @define-color yale-blue #18396B;
      @define-color powder-blue #A0BCE6;
      @define-color prussian-blue #1C2C3F;
      @define-color oxford-blue #0C1F3A;
      @define-color slate-gray #777C8F;
      @define-color charcoal #335064;
      @define-color rich-black #040A14;
      @define-color vista-blue #729DDD;

      * {
        font-family: "JetBrainsMono Nerd Font";
        font-size: 16px;
        font-weight: bold;
      }

      window#waybar {
        background-color: @oxford-blue;
        color: @powder-blue;
        margin-top: 10px;
        transition-property: backround-color;
        transition-duration: .5s;
      }

      window#waybar.hidden {
        opacity: 0.2;
      }

      #workspaces button {
        box-shadow: none;
        border: none;
        border-radius: 0;
        padding: 0 5px;
        color: inherit;
        background-color: transparent;
      }

      #workspaces button:hover {
        box-shadow: inherit;
        text-shadow: inherit;
        background: @celtic-blue;
        color: white;
      }

      tooltip {
        background-color: @oxford-blue;
      }

      tooltip label {
        color: @powder-blue;
      }

      #temperature,
      #idle_inhibitor,
      #battery,
      #cpu,
      #memory,
      #pulseaudio,
      #network,
      #batery,
      #custom-powermenu,
      #custom-logo,
      #tray {
        padding: 0 10px;
      }

      #window,
      #workspaces {
        margin: 0 4px;
      }

      .modules-right > widget:last-child > #workspaces {
        margin-right: 0;
      }

      #custom-logo {
        font-size: 22px;
      }
    '';
  };
}

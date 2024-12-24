{pkgs, ...}: let
  startupScript = pkgs.pkgs.writeShellScriptBin "start" ''
    ${pkgs.hypridle}/bin/hypridle &
    ${pkgs.waybar}/bin/waybar &
    ${pkgs.mako}/bin/mako &

    ${pkgs.wbg}/bin/wbg ${./lain.png}
  '';
in {
  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    settings = {
      "$mainMod" = "SUPER";
      "$terminal" = "kitty";
      "$fileManager" = "superfile";
      "$menu" = "tofi-drun --drun-launch=true";
      "$screenshot" = "grim -g \"$(slurp)\" - | wl-copy";

      monitor = [
        "eDP-1,			1920x1080@59.98Hz, 0x0,			1"
        "HDMI-A-1,	1920x1080@60.00Hz, 1920x0,	1"
      ];

      env = [
        "XCURSOR_THEME,Tokyonight-C"
        "HYPRCURSOR_SIZE,24"
      ];

      input = {
        kb_layout = "us,ru";
        kb_variant = "lang";
        kb_options = "grp:alt_shift_toggle";

        follow_mouse = 1;

        sensitivity = 0;

        touchpad = {
          natural_scroll = false;
        };
      };

      general = {
        gaps_in = 5;
        gaps_out = 30;

        border_size = 0;

        "col.active_border" = "rgb(a0bce6)";
        "col.inactive_border" = "rgb(0f2440)";

        resize_on_border = true;

        allow_tearing = false;

        layout = "dwindle";
      };

      decoration = {
        rounding = 0;

        active_opacity = "1.0";
        inactive_opacity = "1.0";

        shadow = {
          enabled = true;
          range = 4;
          render_power = 3;
          color = "rgba(1a1a1aee)";
        };

        blur = {
          enabled = true;
          size = 3;
          passes = 1;

          vibrancy = "0.1696";
        };
      };

      animations = {
        enabled = true;

        bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";

        animation = [
          "windows,			1, 7,		myBezier"
          "windowsOut,	1, 7,		default, popin 80%"
          "border,			1, 10,	default"
          "borderangle,	1, 8,		default"
          "fade,				1, 7,		default"
          "workspaces,	1, 6,		default"
        ];
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "master";
      };

      misc = {
        animate_manual_resizes = true;
        animate_mouse_windowdragging = true;
        enable_swallow = true;
        render_ahead_of_time = false;
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };

      gestures = {
        workspace_swipe = false;
      };

      device = {
        name = "epic-mouse-v1";
        sensitivity = "-0.4";
      };

      bind = [
        "$mainMod, Q, exec, $terminal"
        "$mainMod, C, killactive"
        "$mainMod, M, exit"
        "$mainMod, E, exec, $fileManager"
        "$mainMod, V, togglefloating"
        "$mainMod, R, exec, $menu"
        "$mainMod, P, pseudo"
        "$mainMod, J, togglesplit"
        "$mainMod SHIFT, S, exec, $screenshot"

        "$mainMod, left,	movefocus, l"
        "$mainMod, right,	movefocus, r"
        "$mainMod, up,		movefocus, u"
        "$mainMod, down,	movefocus, d"

        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"

        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 10"

        "$mainMod, mouse_down, 	workspace, e+1"
        "$mainMod, mouse_up, 	  workspace, e-1"
      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:272, resizewindow"
      ];

      windowrulev2 = "suppressevent maximize, class:.*";

      debug = {
        disable_logs = false;
        enable_stdout_logs = true;
      };

      exec-once = ''${startupScript}/bin/start'';
    };
  };
}

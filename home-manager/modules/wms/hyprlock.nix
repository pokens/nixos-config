{
  programs.hyprlock = {
    enable = true;

    settings = {
      general = {
        grace = 300;
        hide_cursor = true;
        ignore_empty_input = true;
        disable_loading_bar = true;
      };

      background = {
        path = "screenshot";
        blur_passes = 3;
        blur_size = 8;
      };

      label = {
        monitor = "";
        text = "Hi there, $USER";
        color = "rgba(200, 200, 200, 1.0)";
        font_size = 25;
        font_family = "JetBrainsMono Nerd Font";

        position = "0, 80";
        halign = "center";
        valign = "center";
      };

      input-field = {
        monitor = "";
        size = "200, 50";
        shadow_passes = 2;
        dots_center = false;
        position = "0, -80";
        outline_thickness = 5;
        inner_color = "rgb(12, 31 ,58)";
        font_color = "rgb(160, 188, 230)";
      };
    };
  };
}

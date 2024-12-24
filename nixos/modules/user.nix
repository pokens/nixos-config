{pkgs, ...}: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.pokens = {
      isNormalUser = true;
      extraGroups = ["wheel" "disk" "audio" "video" "networkmanager" "input" "docker" "plugdev"];
    };
  };

  # Enable automatic login for the user
  services.getty.autologinUser = "pokens";
}

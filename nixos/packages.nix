{ lib, pkgs, ... } : {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    nwg-look
    mako
    libnotify
    wbg
    wf-recorder
    firefox
    telegram-desktop
    vesktop
    docker
    obsidian
    pavucontrol
    superfile
    grim
    slurp
    wl-clipboard
    wf-recorder
    hoppscotch
    fastfetch
    swappy
    ntfs3g
    home-manager
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];
}

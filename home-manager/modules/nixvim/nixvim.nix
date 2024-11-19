{
  imports = [
    ./settings.nix
    ./plugins.nix
    ./theme.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
  };
}

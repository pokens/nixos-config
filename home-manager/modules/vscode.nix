{ pkgs, ... } : {
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      aaron-bond.better-comments
      adpyke.codesnap
      leonardssh.vscord
      github.github-vscode-theme
      vscode-icons-team.vscode-icons
      svelte.svelte-vscode
      astro-build.astro-vscode
      ritwickdey.liveserver
      golang.go
    ];
  };
}

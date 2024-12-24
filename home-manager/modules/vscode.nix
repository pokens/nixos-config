{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    userSettings = {
      "window.menuBarVisibility" = "toggle";

      "terminal.integrated.smoothScrolling" = true;

      "files.autoSave" = "afterDelay";

      "editor.tabSize" = 3;
      "editor.formatOnSave" = true;
      "editor.fontLigatures" = true;
      "editor.tabCompletion" = "on";
      "editor.smoothScrolling" = true;
      "editor.fontFamily" = "\'JetBrainsMono Nerd Font\'";
      "editor.cursorSmoothCaretAnimation" = "on";

      "explorer.confirmDelete" = false;

      "workbench.iconTheme" = "vscode-icons";
      "workbench.colorTheme" = "GitHub Dark";
      "workbench.list.smoothScrolling" = true;

      "totalTypeScript.hideAllTips" = true;
      "totalTypeScript.hideBasicTips" = true;

      "gitlens.views.commitDetails.files.layout" = "tree";

      "code-runner.runInTerminal" = true;
      "code-runner.saveFileBeforeRun" = true;
      "code-runner.clearPreviousOutput" = true;
      "code-runner.saveAllFilesBeforeRun" = true;

      "nix.serverPath" = "nixd";
      "nix.enableLanguageServer" = true;
      "nix.serverSettings" = {
        "nixd" = {
          "formatting" = {
            "command" = ["alejandra"];
          };
          "options" = {
            "nixos" = {
              "expr" = "(builtins.getFlake \"/home/pokens/nix\").nixosConfigurations.nixos.options";
            };
            "home-manager" = {
              "expr" = "(builtins.getFlake \"/home/pokens/nix\").homeConfigurations.pokens.options";
            };
          };
        };
      };
    };

    extensions = with pkgs.vscode-extensions; [
      golang.go
      adpyke.codesnap
      leonardssh.vscord
      jnoortheen.nix-ide
      svelte.svelte-vscode
      usernamehw.errorlens
      ritwickdey.liveserver
      esbenp.prettier-vscode
      astro-build.astro-vscode
      bradlc.vscode-tailwindcss
      formulahendry.code-runner
      aaron-bond.better-comments
      ms-azuretools.vscode-docker
      github.github-vscode-theme
      formulahendry.auto-close-tag
      formulahendry.auto-rename-tag
      vscode-icons-team.vscode-icons
      christian-kohler.npm-intellisense
      christian-kohler.path-intellisense
    ];
  };
}

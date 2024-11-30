{
  programs.nixvim.plugins = {
    neocord.enable = true;
    auto-save.enable = true;
    comment.enable = true;
    neoscroll.enable = true;
    precognition.enable = true;
    flash.enable = true;
    spider.enable = true;

    lsp = {
      enable = true;
      servers = {
        astro.enable = true;
        svelte.enable = true;
        tailwindcss.enable = true;
        html.enable = true;
        prismals.enable = true;
        nil_ls.enable = true;
        ts_ls.enable = true;
        postgres_lsp.enable = true;
        marksman.enable = true;
        pyright.enable = true;
        gopls.enable = true;
        terraformls.enable = true;
        jsonls.enable = true;
        asm_lsp.enable = true;
        denols.enable = true;
        docker.enable = true;
      };
    };

    telescope = {
      enable = true;
    };

    treesitter = {
      enable = true;
    };

    undotree = {
      enable = true;
    };

    todo-comments = {
      enable = true;
      settings.colors = {
        error = ["DiagnosticError", "ErrorMsg", "#ED8796"];
        warning = ["DiagnosticWarn" "WarningMsg" "#EED49F"];
        info = ["DiagnosticInfo" "#EED49F"];
        default = ["Identifier" "#F5A97F"];
        test = ["Identifier", "8AADF4"];
      };
    };
  };
}

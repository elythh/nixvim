{
  plugins = {
    fzf-lua = {
      enable = true;
      profile = "telescope";
      settings = {
        keymap = {
          fzf = {
            "ctrl-q" = "select-all+accept";
          };
        };
        actions = {
          files = {
            "ctrl-t".__raw = ''
              require("trouble.sources.fzf").actions.open
            '';
          };
        };
      };
      keymaps = {
        "<leader>f'" = {
          action = "marks";
          options.desc = "View marks";
        };
        "<leader>f/" = {
          action = "grep_curbuf";
          options.desc = "Fuzzy find in current buffer";
        };
        "<leader>f<CR>" = {
          action = "resume";
          options.desc = "Resume action";
        };
        "<leader>fa" = {
          action = "autocmds";
          options.desc = "View autocommands";
        };
        "<leader>fC" = {
          action = "commands";
          options.desc = "View commands";
        };
        "<leader>fb" = {
          action = "buffers";
          options.desc = "View buffers";
          settings = {
            sort_mru = true;
            sort_lastused = true;
          };
        };
        "<leader>fc" = {
          action = "live_grep";
          options.desc = "Grep string";
        };
        "<leader>fd" = {
          action = "diagnostics_workspace";
          options.desc = "View diagnostics";
        };
        "<leader>fD" = {
          action = "diagnostics_document";
          options.desc = "View diagnostics";
        };
        "<leader>ff" = {
          action = "files";
          options.desc = "Find files";
        };
        "<leader><leader>" = {
          action = "files";
          options.desc = "Find files";
        };
        "<leader>fh" = {
          action = "help_tags";
          options.desc = "View help tags";
        };
        "<leader>fm" = {
          action = "man_pages";
          options.desc = "View man pages";
        };
        "<leader>fo" = {
          action = "oldfiles";
          options.desc = "View old files";
        };
        "<leader>fr" = {
          action = "registers";
          options.desc = "View registers";
        };
        "<leader>fs" = {
          action = "lsp_document_symbols";
          options.desc = "Search symbols";
        };
        "<leader>fq" = {
          action = "quickfix";
          options.desc = "Search quickfix";
        };
        "<leader>gB" = {
          action = "git_branches";
          options.desc = "View git branches";
        };
        "<leader>gC" = {
          action = "git_commits";
          options.desc = "View git commits";
        };
        "<leader>gs" = {
          action = "git_status";
          options.desc = "View git status";
        };
        "<leader>gS" = {
          action = "git_stash";
          options.desc = "View git stashes";
        };
      };
    };
  };
}

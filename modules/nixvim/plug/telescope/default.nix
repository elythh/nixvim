# ╭──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
# │ SHAMELESSLY STOLEN FROM                                                                                                              │
# │ https://github.com/khaneliman/khanelivim/blob/058274a310e20e74f7bd274c3f2d2af13a189a04/packages/khanelivim/plugins/telescope.nix#L33 │
# ╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
{
  config,
  lib,
  pkgs,
  ...
}:
{
  extraPackages = with pkgs; [ ripgrep ];

  keymaps = lib.mkIf config.plugins.telescope.enable [
    {
      mode = "n";
      key = "<leader>fF";
      action.__raw = ''
        function()
          require("telescope.builtin").find_files({ hidden = true, no_ignore = true})
        end
      '';
      options = {
        desc = "Find all files";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fW";
      action.__raw = ''
        function()
          require("telescope.builtin").live_grep {
            additional_args = function(args) return vim.list_extend(args, { "--hidden", "--no-ignore" }) end,
          }
        end
      '';
      options = {
        desc = "Find words in all files";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>f?";
      action.__raw = ''
        function()
          require("telescope.builtin").live_grep { grep_open_files=true }
        end
      '';
      options = {
        desc = "Find words in all open buffers";
        silent = true;
      };
    }
    (lib.mkIf config.plugins.telescope.extensions.undo.enable {
      mode = "n";
      key = "<leader>fu";
      action = "<cmd>Telescope undo<CR>";
      options = {
        desc = "List undo history";
      };
    })
    (lib.mkIf config.plugins.telescope.extensions.live-grep-args.enable {
      mode = "n";
      key = "<leader>fw";
      action = "<cmd>Telescope live_grep_args<CR>";
      options = {
        desc = "Live grep (args)";
      };
    })
  ];

  plugins.telescope = {
    enable = false;

    # extensions = {
    #   file-browser = {
    #     enable = true;
    #     settings = {
    #       hidden = true;
    #     };
    #   };
    #
    #   frecency = {
    #     # FIXME: super slow loading
    #     # enable = true;
    #     settings = {
    #       auto_validate = false;
    #     };
    #   };
    #
    #   fzf-native = {
    #     enable = true;
    #   };
    #
    #   live-grep-args.enable = true;
    #
    #   ui-select = {
    #     enable = true;
    #     settings = {
    #       __unkeyed.__raw = ''require("telescope.themes").get_dropdown{}'';
    #     };
    #   };
    #
    #   undo = {
    #     enable = true;
    #     settings = {
    #       side_by_side = true;
    #       layout_strategy = "vertical";
    #       layout_config = {
    #         preview_height = 0.8;
    #       };
    #     };
    #   };
    # };

    keymaps = {
      "<leader>f'" = {
        action = "marks";
        options.desc = "View marks";
      };
      "<leader>f/" = {
        action = "current_buffer_fuzzy_find";
        options.desc = "Fuzzy find in current buffer";
      };
      "<leader>f<CR>" = {
        action = "resume";
        options.desc = "Resume action";
      };
      "<leader>fa" = {
        action = "autocommands";
        options.desc = "View autocommands";
      };
      "<leader>fC" = {
        action = "commands";
        options.desc = "View commands";
      };
      "<leader>fb" = {
        action = "buffers";
        options.desc = "View buffers";
      };
      "<leader>fc" = {
        action = "grep_string";
        options.desc = "Grep string";
      };
      "<leader>fd" = {
        action = "diagnostics";
        options.desc = "View diagnostics";
      };
      "<leader>ff" = {
        action = "find_files";
        options.desc = "Find files";
      };
      "<leader><leader>" = {
        action = "find_files";
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

    settings = {
      defaults = {
        vimgrep_arguments = [
          "${pkgs.ripgrep}/bin/rg"
          "-L"
          "--color=never"
          "--no-heading"
          "--with-filename"
          "--line-number"
          "--column"
          "--smart-case"
          "--fixed-strings"
        ];
        selection_caret = "  ";
        entry_prefix = "  ";
        layout_strategy = "flex";
        layout_config = {
          horizontal = {
            prompt_position = "top";
          };
        };
        sorting_strategy = "ascending";
        file_ignore_patterns = [
          "^.git/"
          "^.mypy_cache/"
          "^__pycache__/"
          "^output/"
          "^data/"
          "%.ipynb"
        ];
        set_env.COLORTERM = "truecolor";
      };

      pickers = {
        colorscheme = {
          enable_preview = true;
        };
      };
    };
  };
}

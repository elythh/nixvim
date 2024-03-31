{
  plugins.telescope = {
    enable = true;
    extensions = {
      file_browser = {
        enable = true;
      };
      fzf-native = {
        enable = true;
      };
    };
    defaults = {
      layout_config = {
        horizontal = {
          prompt_position = "top";
        };
      };
      sorting_strategy = "ascending";
    };
    keymaps = {
      "<leader><space>" = {
        action = "find_files, {}";
        desc = "Find project files";
      };
      "<leader>/" = {
        action = "live_grep";
        desc = "Grep (root dir)";
      };
      "<leader>:" = {
        action = "command_history, {}";
        desc = "Command History";
      };
      "<leader>b" = {
        action = "buffers, {}";
        desc = "+buffer";
      };
      "<leader>ff" = {
        action = "find_files, {}";
        desc = "Find project files";
      };
      "<leader>fr" = {
        action = "live_grep, {}";
        desc = "Find text";
      };
      "<leader>fR" = {
        action = "resume, {}";
        desc = "Resume";
      };
      "<leader>fg" = {
        action = "oldfiles, {}";
        desc = "Recent";
      };
      "<leader>fb" = {
        action = "buffers, {}";
        desc = "Buffers";
      };
      "<C-p>" = {
        action = "git_files, {}";
        desc = "Search git files";
      };
      "<leader>gc" = {
        action = "git_commits, {}";
        desc = "Commits";
      };
      "<leader>gs" = {
        action = "git_status, {}";
        desc = "Status";
      };
      "<leader>sa" = {
        action = "autocommands, {}";
        desc = "Auto Commands";
      };
      "<leader>sb" = {
        action = "current_buffer_fuzzy_find, {}";
        desc = "Buffer";
      };
      "<leader>sc" = {
        action = "command_history, {}";
        desc = "Command History";
      };
      "<leader>sC" = {
        action = "commands, {}";
        desc = "Commands";
      };
      "<leader>sD" = {
        action = "diagnostics, {}";
        desc = "Workspace diagnostics";
      };
      "<leader>sh" = {
        action = "help_tags, {}";
        desc = "Help pages";
      };
      "<leader>sH" = {
        action = "highlights, {}";
        desc = "Search Highlight Groups";
      };
      "<leader>sk" = {
        action = "keymaps, {}";
        desc = "Keymaps";
      };
      "<leader>sM" = {
        action = "man_pages, {}";
        desc = "Man pages";
      };
      "<leader>sm" = {
        action = "marks, {}";
        desc = "Jump to Mark";
      };
      "<leader>so" = {
        action = "vim_options, {}";
        desc = "Options";
      };
      "<leader>sR" = {
        action = "resume, {}";
        desc = "Resume";
      };
      "<leader>uC" = {
        action = "colorscheme, {}";
        desc = "Colorscheme preview";
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>sd";
      action = "<cmd>Telescope diagnostics bufnr=0<cr>";
      options = {
        desc = "Document diagnostics";
      };
    }
    {
      mode = "n";
      key = "<leader>fe";
      action = "<cmd>Telescope file_browser<cr>";
      options = {
        desc = "File browser";
      };
    }
    {
      mode = "n";
      key = "<leader>fE";
      action = "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>";
      options = {
        desc = "File browser";
      };
    }
  ];
  extraConfigLua = ''
    require("telescope").setup{
      pickers = {
        colorscheme = {
          enable_preview = true
        }
      }
    }
  '';
}

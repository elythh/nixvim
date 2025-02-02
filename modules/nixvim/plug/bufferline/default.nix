{ config, lib, ... }:
let
  colors = import ../colorscheme/colors/${config.theme}.nix { };
in
{
  plugins = {
    bufferline = {
      enable = true;
      settings = {
        options.__raw = ''
          {
            indicator = {
              style = "none",
            },
            style = "none",
            mode = "buffers",
            numbers = "none",
            close_command = "bdelete! %d",
            right_mouse_command = "bdelete! %d",
            left_mouse_command = "buffer %d",
            middle_mouse_command = "bdelete! %d",
            buffer_close_icon = "x",
            modified_icon = "",
            close_icon = "X",
            left_trunc_marker = "",
            right_trunc_marker = "",
            max_name_length = 14,
            max_prefix_length = 15,
            truncate_names = false,
            tab_size = 15,
            diagnostics = false,
            show_buffer_icons = false,
            show_buffer_close_icons = true,
            show_close_icon = true,
            show_tab_indicators = false,
            show_duplicate_prefix = true,
            persist_buffer_sort = true,
            separator_style = "none",
            always_show_bufferline = true,
            -- enforce_regular_tabs = true,
          }
        '';
      };
    };
  };
  keymaps = lib.mkIf config.plugins.bufferline.enable [
    {
      mode = "n";
      key = "<Tab>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = {
        desc = "Cycle to next buffer";
      };
    }

    {
      mode = "n";
      key = "<S-Tab>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = {
        desc = "Cycle to previous buffer";
      };
    }

    {
      mode = "n";
      key = "<S-l>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = {
        desc = "Cycle to next buffer";
      };
    }

    {
      mode = "n";
      key = "<S-h>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = {
        desc = "Cycle to previous buffer";
      };
    }

    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>bdelete<cr>";
      options = {
        desc = "Delete buffer";
      };
    }

    {
      mode = "n";
      key = "<leader>bb";
      action = "<cmd>e #<cr>";
      options = {
        desc = "Switch to Other Buffer";
      };
    }

    {
      mode = "n";
      key = "<leader>`";
      action = "<cmd>e #<cr>";
      options = {
        desc = "Switch to Other Buffer";
      };
    }

    {
      mode = "n";
      key = "<leader>br";
      action = "<cmd>BufferLineCloseRight<cr>";
      options = {
        desc = "Delete buffers to the right";
      };
    }

    {
      mode = "n";
      key = "<leader>bl";
      action = "<cmd>BufferLineCloseLeft<cr>";
      options = {
        desc = "Delete buffers to the left";
      };
    }

    {
      mode = "n";
      key = "<leader>bo";
      action = "<cmd>BufferLineCloseOthers<cr>";
      options = {
        desc = "Delete other buffers";
      };
    }

    {
      mode = "n";
      key = "<leader>bp";
      action = "<cmd>BufferLineTogglePin<cr>";
      options = {
        desc = "Toggle pin";
      };
    }

    {
      mode = "n";
      key = "<leader>bP";
      action = "<Cmd>BufferLineGroupClose ungrouped<CR>";
      options = {
        desc = "Delete non-pinned buffers";
      };
    }
  ];
  highlight = with colors; {
    BufferLineBackground = {
      bg = base01;
    };
    BufferLineBuffer = { };
    BufferLineBufferSelected = {
      bg = base0C;
      fg = base00;
    };
    BufferLineBufferVisible = {
      bg = base01;
    };
    BufferLineCloseButton = {
      bg = base01;
    };
    BufferLinecloseButtonSelected = {
      bg = base0C;
      fg = base00;
    };
    BufferLineCloseButtonVisible = {
      bg = base01;
    };
    BufferLineDuplicate = {
      bg = base01;
    };
    BufferLineDuplicateSelected = {
      bg = base0C;
      fg = base00;
    };
    BufferLineDuplicateVisible = {
      bg = base01;
    };
    BufferLineFill = {
      bg = base00;
    };
    BufferLineIndicatorSelected = {
      bg = base0C;
    };
    BufferLineIndicator = {
      bg = base01;
    };
    BufferLineIndicatorVisible = {
      bg = base01;
    };
    BufferLineModified = { };
    BufferLineModifiedSelected = {
      bg = base0C;
    };
    BufferLineModifiedVisible = {
      bg = base01;
    };
    BufferLineOffsetSeparator = { };
    BufferLinePick = { };
    BufferLinePickSelected = {
      bg = base0C;
    };
    BufferLinePickVisible = { };
    BufferLineSeparator = {
      bg = base01;
      fg = base01;
    };
    BufferLineSeparatorSelected = {
      bg = base0C;
    };
    BufferLineSeparatorVisible = { };
  };
}

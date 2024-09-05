{ config, lib, ... }:
let
  colors = import ../../colors/${config.theme}.nix { };
in
{
  plugins = {
    bufferline = {
      enable = false;
      settings = {
        options = {
          separator_style = "thin"; # “slant”, “padded_slant”, “slope”, “padded_slope”, “thick”, “thin”
        };
        highlights = lib.mkIf config.colorschemes.base16.enable {
          fill = {
            fg = "none";
            bg = "none";
          };
          background = {
            fg = colors.base03;
            bg = colors.base01;
          };
          buffer_selected = {
            fg = colors.base05;
            italic = false;
          };
          buffer_visible = {
            fg = colors.base03;
            bg = colors.base00;
          };
          close_button = {
            fg = colors.base03;
            bg = colors.base01;
          };
          close_button_visible = {
            fg = colors.base03;
            bg = colors.base01;
          };
          close_button_selected = {
            fg = colors.base08;
          };

          indicator_selected = {
            fg = colors.base00;
          };
          indicator_visible = {
            fg = colors.base00;
            bg = colors.base00;
          };
          separator = {
            fg = colors.base01;
            bg = colors.base01;
          };
          modified = {
            fg = colors.base03;
            bg = colors.base00;
          };
          modified_visible = {
            fg = colors.base00;
            bg = colors.base00;
          };
          modified_selected = {
            fg = colors.base0B;
          };
          tab_close = {
            fg = colors.base00;
            bg = colors.base00;
          };
          duplicate = {
            fg = colors.base03;
            bg = colors.base01;
          };
        };
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

    # {
    #   mode = "n";
    #   key = "<leader>`";
    #   action = "<cmd>e #<cr>";
    #   options = {
    #     desc = "Switch to Other Buffer";
    #   };
    # }

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
}

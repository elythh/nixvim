let
  lua = x: {__raw = x;};
in {
  colorschemes = {
    gruvbox = {
      enable = true;
      settings = {
        transparent_mode = true;
      };
    };
    tokyonight = {
      enable = false;
      style = "night";
      transparent = true;
      onHighlights = ''
        function(hl, c)
            local prompt = "#2d3149"
            hl.TelescopeNormal = {
                bg = c.bg_dark,
                fg = c.fg_dark,
            }
            hl.TelescopeBorder = {
                bg = c.bg_dark,
                fg = c.bg_dark,
            }
            hl.TelescopePromptNormal = {
                bg = prompt,
            }
            hl.TelescopePromptBorder = {
                bg = prompt,
                fg = prompt,
            }
            hl.TelescopePromptTitle = {
                bg = prompt,
                fg = prompt,
            }
            hl.TelescopePreviewTitle = {
                bg = c.bg_dark,
                fg = c.bg_dark,
            }
            hl.TelescopeResultsTitle = {
                bg = c.bg_dark,
                fg = c.bg_dark,
            }
            end
      '';
    };
    oxocarbon.enable = false;
    rose-pine = {
      enable = false;
      style = "moon"; #  "main", "moon", "dawn" or raw lua code
      disableItalics = false;
      transparentFloat = false;
      transparentBackground = true;
      highlightGroups = {
        TelescopeNormal = {
          bg = lua "require('rose-pine.palette').base";
          fg = lua "require('rose-pine.palette').surface";
        };
        TelescopeBorder = {
          bg = lua "require('rose-pine.palette').base";
          fg = lua "require('rose-pine.palette').surface";
        };
        TelescopePreviewTitle = {
          bg = lua "require('rose-pine.palette').base";
          fg = lua "require('rose-pine.palette').surface";
        };
      };
    };
    catppuccin = {
      enable = false;
      background = {
        light = "macchiato";
        dark = "mocha";
      };
      flavour = "frappe"; # "latte", "mocha", "frappe", "macchiato" or raw lua code
      disableBold = false;
      disableItalic = false;
      disableUnderline = false;
      transparentBackground = true;
      integrations = {
        cmp = true;
        noice = true;
        notify = true;
        gitsigns = true;
        which_key = true;
        illuminate = {
          enabled = true;
        };
        treesitter = true;
        treesitter_context = true;
        telescope.enabled = true;
        indent_blankline.enabled = true;
        mini.enabled = true;
        native_lsp = {
          enabled = true;
          inlay_hints = {
            background = true;
          };
          underlines = {
            errors = ["underline"];
            hints = ["underline"];
            information = ["underline"];
            warnings = ["underline"];
          };
        };
      };
    };
  };
}

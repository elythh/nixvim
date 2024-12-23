{
  pkgs,
  inputs,
  system,
  ...
}:
{
  extraPlugins = with pkgs.vimPlugins; [
    blink-cmp-copilot
  ];

  plugins = {
    cmp-emoji.enable = true;
    cmp-git.enable = true;
    cmp-spell.enable = true;
    blink-cmp = {
      enable = true;
      package = inputs.blink-cmp.packages.${system}.default;
      luaConfig.pre = # lua
        ''
          require('blink.compat').setup({debug = true, impersonate_nvim_cmp = true})
        '';

      settings = {
        keymap = {
          preset = "super-tab";
        };
        signature = {
          enabled = true;
        };

        sources = {
          default = [
            "lsp"
            "path"
            "luasnip"
            "buffer"
            # "treesitter"
            "copilot"
            "emoji"
            "spell"
            "git"
          ];
          providers = {
            emoji = {
              name = "emoji";
              module = "blink.compat.source";
            };
            copilot = {
              name = "copilot";
              module = "blink-cmp-copilot";
            };
            git = {
              name = "git";
              module = "blink.compat.source";
              score_offset = 0;
            };
            spell = {
              name = "spell";
              module = "blink.compat.source";
              score_offset = 0;
            };
          };
        };

        completion = {
          trigger = {
            show_in_snippet = false;
          };
          documentation = {
            auto_show = true;
          };
          accept = {
            auto_brackets = {
              enabled = true;
            };
          };
          menu = {
            draw = {
              gap = 2;
              treesitter = [
                "lsp"
                "copilot"
              ];
              columns = [
                {
                  __unkeyed-1 = "label";
                  __unkeyed-2 = "label_description";
                  gap = 1;
                }
                {
                  __unkeyed-1 = "kind_icon";
                  __unkeyed-2 = "kind";
                  gap = 1;
                }
              ];
              components = {
                label = {
                  width = {
                    fill = true;
                  };
                };
                "kind_icon" = {
                  width = {
                    fill = true;
                  };
                };
              };
            };
          };
        };
      };
    };
  };
}

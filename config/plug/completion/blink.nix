{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
    blink-cmp-copilot
  ];

  plugins = {
    blink-cmp = {
      enable = true;
      settings = {
        accept = {
          auto_brackets = {
            enabled = true;
          };
        };
        windows.documentation = {
          auto_show = true;
        };
        highlight = {
          use_nvim_cmp_as_default = true;
        };
        keymap = {
          preset = "super-tab";
        };
        trigger = {
          signature_help = {
            enabled = true;
          };
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
            "treesitter"
            "copilot"
          ];
          "lsp" = { };
          "treesitter" = { };
          "path" = { };
          "snippets" = { };
          "buffer" = { };
          "copilot" = { };
        };

        completion = {
          trigger = {
            show_in_snippet = false;
          };
        };

        opts = {
          snippets = {
            expand.__raw = ''
              function(snippet) require('luasnip').lsp_expand(snippet) end
            '';
            active.__raw = ''
              function(filter)
                if filter and filter.direction then
                  return require('luasnip').jumpable(filter.direction)
                end
                return require('luasnip').in_snippet()
              end
            '';
            jump.__raw = ''
              function(direction) require('luasnip').jump(direction) end
            '';
          };
        };
      };
    };
  };
}

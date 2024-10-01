{ lib, config, ... }:
let
  colors = import ../../colors/${config.theme}.nix { };
in
{
  plugins.mini = {
    enable = true;
    mockDevIcons = true;
    modules = {
      ai = { };
      align = { };
      bracketed = { };
      clue = {
        window = {
          delay = 500;
          config = {
            border = "none";
            width.__raw = ''
              math.floor(0.318 * vim.o.columns)
            '';
            row = "auto";
            col = "auto";
            anchor = "NE";
          };
        };
        triggers = [
          {
            mode = "n";
            keys = "<leader>";
          }
          {
            mode = "x";
            keys = "<leader>";
          }
          {
            mode = "i";
            keys = "<C-x>";
          }
          {
            mode = "n";
            keys = "g";
          }
          {
            mode = "x";
            keys = "g";
          }
          {
            mode = "n";
            keys = "'";
          }
          {
            mode = "n";
            keys = "`";
          }
          {
            mode = "x";
            keys = "'";
          }
          {
            mode = "x";
            keys = "`";
          }
          {
            mode = "n";
            keys = "\"";
          }
          {
            mode = "x";
            keys = "\"";
          }
          {
            mode = "i";
            keys = "<C-r>";
          }
          {
            mode = "c";
            keys = "<C-r>";
          }
          {
            mode = "n";
            keys = "<C-w>";
          }
          {
            mode = "n";
            keys = "z";
          }
          {
            mode = "x";
            keys = "z";
          }
        ];
        clues = [
          { __raw = "require('mini.clue').gen_clues.builtin_completion()"; }
          { __raw = "require('mini.clue').gen_clues.g()"; }
          { __raw = "require('mini.clue').gen_clues.marks()"; }
          { __raw = "require('mini.clue').gen_clues.registers()"; }
          { __raw = "require('mini.clue').gen_clues.windows()"; }
          { __raw = "require('mini.clue').gen_clues.z()"; }
        ];
      };
      files = {
        content = {
          filter.__raw = ''
            function(entry)
              return entry.name ~= '.git' and entry.name ~= '.direnv' and entry.name ~= '.envrc' and entry.name ~= '.gitlab' and entry.name ~= '.github'
            end'';
        };
        windows = {
          preview = true;
          width_preview = 100;
        };
      };
      icons = { };
      notify = { };
      pairs = { };
      surround = { };
      # tabline = { };
      trailspace = { };
      hipatterns = {
        highlighters = {
          hex_color.__raw = ''require("mini.hipatterns").gen_highlighter.hex_color()'';
        };
      };
      indentscope = {
        symbol = "";
        # draw = {
        #   delay = 100;
        #   priority = 2;
        #   animation.__raw = ''
        #     function(s, n)
        #       return s/n*20
        #     end'';
        # };
      };
      diff = {
        view = {
          signs = {
            add = "│";
            change = "│";
            delete = "-";
          };
        };
      };
    };
  };
  keymaps = lib.mkIf (config.plugins.mini.enable && lib.hasAttr "files" config.plugins.mini.modules) [
    {
      mode = "n";
      key = "-";
      action = ":lua  MiniFiles.open(vim.api.nvim_buf_get_name(0))<CR>";
      options = {
        desc = "Open file explorer cwd";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "_";
      action = ":lua  MiniFiles.open()<CR>";
      options = {
        desc = "Open file explorer";
        silent = true;
      };
    }
  ];

  highlight =
    with colors;
    lib.mkIf (config.plugins.mini.enable && lib.hasAttr "clue" config.plugins.mini.modules) {
      MiniClueDescSingle = {
        bg = base00;
      };
      MiniClueDescGroup = {
        bg = base00;
        fg = base0E;
      };
      MiniClueNextKey = {
        bg = base00;
        fg = base0D;
      };
      MiniClueNextKeyWithPostkeys = {
        bg = base00;
        fg = base0F;
      };
      MiniClueSeparator = {
        bg = base00;
        fg = base0E;
      };
      MiniClueBorder = {
        bg = base00;
        fg = base0E;
      };
    };
}

{ lib, config, ... }:
{
  plugins.mini = {
    enable = true;
    mockDevIcons = true;
    modules = {
      ai = { };
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
}

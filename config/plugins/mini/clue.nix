{
  plugins.mini.modules.clue = {
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
        mode = "n";
        keys = "]";
      }
      {
        mode = "n";
        keys = "[";
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
}

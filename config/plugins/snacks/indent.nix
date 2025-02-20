{
  plugins.snacks = {
    settings = {
      indent = {
        indent = {
          enabled = false;
        };
        chunk = {
          enabled = true;
          only_current = true;
          char = {
            arrow = "─";
            corner_top = "╭";
            corner_bottom = "╰";
          };
          hl = "SnacksIndentScope";
        };
      };
    };
  };
}

{
  colorschemes.catppuccin = {
    settings = {
      default_integrations = true;
      dim_inactive = {
        enabled = false;
        percentage = 0.25;
      };

      flavour = "macchiato";

      integrations = {
        aerial = true;
        blink_cmp = true;
        dap = {
          enabled = true;
          enable_ui = true;
        };
        indent_blankline = {
          enabled = true;
          colored_indent_levels = true;
        };
        lsp_trouble = true;
        markdown = true;
        mason = true;
        mini.enabled = true;

        native_lsp = {
          enabled = true;
          virtual_text = {
            errors = [ "italic" ];
            hints = [ "italic" ];
            warnings = [ "italic" ];
            information = [ "italic" ];
          };
          underlines = {
            errors = [ "underline" ];
            hints = [ "underline" ];
            warnings = [ "underline" ];
            information = [ "underline" ];
          };
          inlay_hints = {
            background = true;
          };
        };
        noice = true;
        notify = true;
        symbols_outline = true;
        snacks = true;
        treesitter = true;
      };

      show_end_of_buffer = true;
      term_colors = true;
      transparent_background = true;
    };
  };
}

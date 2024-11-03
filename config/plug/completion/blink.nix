{
  plugins.blink-cmp = {
    enable = false;
    settings = {
      accept = {
        auto_brackets = {
          enabled = true;
        };
      };
      documentation = {
        auto_show = true;
      };
      highlight = {
        use_nvim_cmp_as_default = true;
      };
      keymap = {
        accept = "<C-y>";
        hide = "<C-e>";
        hide_documentation = "<C-space>";
        scroll_documentation_down = "<C-f>";
        scroll_documentation_up = "<C-b>";
        select_next = "<C-n>";
        select_prev = "<C-p>";
        show = "<C-space>";
        show_documentation = "<C-space>";
        snippet_backward = "<S-Tab>";
        snippet_forward = "<Tab>";
      };
      trigger = {
        signature_help = {
          enabled = true;
        };
      };
    };
  };
}

{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save = {
        lsp_fallback = true;
        timeout_ms = 500;
      };
      notify_on_error = true;
      formatters_by_ft = {
        nix = ["alejandra"];
        c = ["clang-format"];
      };
    };
  };
}

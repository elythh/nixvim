{
  plugins.copilot-cmp = {
    enable = false;
  };
  plugins.copilot-lua = {
    enable = true;
    suggestion = { enabled = false; };
    panel = { enabled = false; };
  };

  extraConfigLua = ''
    require("copilot").setup({
      suggestion = { enabled = false },
      panel = { enabled = false },
    })
  '';
}

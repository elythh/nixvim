{ lib, config, ... }:
{
  plugins.copilot-cmp = lib.mkIf config.plugins.cmp.enable {
    enable = true;
  };
  plugins.copilot-lua = {
    enable = true;
    settings = {
      suggestion = {
        enabled = false;
      };
      panel = {
        enabled = false;
      };
    };
  };

  extraConfigLua = lib.mkIf config.plugins.cmp.enable ''
    require("copilot").setup({
      suggestion = { enabled = false },
      panel = { enabled = false },
    })
  '';
}

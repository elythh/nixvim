{ lib, config, ... }:
{
  plugins = {
    spectre = {
      enable = true;
    };
  };

  keymaps = lib.mkIf config.plugins.spectre.enable [
    {
      mode = "n";
      key = "<leader>rs";
      action = ":Spectre<CR>";
      options = {
        desc = "Spectre toggle";
        silent = true;
      };
    }
  ];
}

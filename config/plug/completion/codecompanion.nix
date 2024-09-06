{ lib, pkgs, ... }:
let
  inherit (lib) mkIf;

  pname = "codecompanion";
  version = "v2.2.0";

  codecompanion_enable = true;
in
{
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      inherit pname version;
      src = pkgs.fetchFromGitHub {
        owner = "olimorris";
        repo = "codecompanion.nvim";
        rev = "refs/tags/${version}";
        hash = "sha256-VD3jI48H4n60aHzs8tf0FaZ+TRecjik78i71Yv+xVyY=";
      };
    })
  ];

  extraConfigLua = ''
    require("codecompanion").setup({
       strategies = {
         chat = {
           adapter = "anthropic",
         },
         inline = {
           adapter = "anthropic",
         },
         agent = {
           adapter = "anthropic",
         },
       },
    }
      );
  '';
  keymaps = mkIf codecompanion_enable [
    {
      key = "<leader>cc";
      action = ":CodeCompanionToggle<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Toggle CodeCompanion";
      };
    }
    {
      key = "<leader>cf";
      action = ":CodeCompanionActions<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "CodeCompanion Actions";
      };
    }
  ];
}

{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "schema-companion.nvim";
      version = "0.0.1";
      src = pkgs.fetchFromGitHub {
        owner = "cenk1cenk2";
        repo = "schema-companion.nvim";
        rev = "3c4ae9c1b1a87c54f9ffdb1717fb6cfe909fed84";
        hash = "sha256-BW5XGWfjP9U8580PwYMxS8NL9+o+bTbKizBirnADYVA=";
      };
    })
  ];
  extraConfigLua = ''
    require("schema-companion").setup({
      -- if you have telescope you can register the extension
      enable_telescope = true,
      matchers = {
        -- add your matchers
        require("schema-companion.matchers.kubernetes").setup({ version = "master" }),
      },
    })
  '';
}

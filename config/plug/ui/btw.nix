{pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "btw.nvim";
      version = "2024-04-36";
      src = pkgs.fetchFromGitHub {
        owner = "letieu";
        repo = "btw.nvim";
        rev = "47f6419e90d3383987fd06e8f3e06a4bc032ac83";
        hash = "sha256-91DZUfa4FBvXnkcNHdllr82Dr1Ie+MGVD3ibwkqo04c=";
      };
    })
  ];

  extraConfigLua = ''
    require('btw').setup({
      text = "I use Neovim (and NixOS, BTW)",
    })
  '';
}

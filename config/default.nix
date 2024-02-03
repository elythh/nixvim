{ inputs, self, pkgs, ... }:
{
  imports = [
    ./keys.nix
    ./sets.nix

    ./plug/lsp/none-ls.nix
    ./plug/lsp/lsp.nix
    ./plug/snippets/luasnip.nix
    ./plug/completion/lspkind.nix
    ./plug/completion/cmp.nix
    ./plug/utils/oil.nix
    ./plug/utils/whichkey.nix
    ./plug/utils/nvim-autopairs.nix
    ./plug/colorscheme/colorscheme.nix
    ./plug/ui/alpha.nix
    ./plug/ui/noice.nix
    ./plug/ui/bufferline.nix
    ./plug/ui/telescope.nix
    ./plug/ui/lualine.nix
    ./plug/git/lazygit.nix
    ./plug/git/gitsigns.nix
  ];
}

{ inputs, self, pkgs, ... }:
{
  imports = [
    ./keys.nix
    ./sets.nix

    ./plug/colorscheme/colorscheme.nix

    ./plug/completion/cmp.nix
    ./plug/completion/lspkind.nix

    ./plug/git/gitsigns.nix
    ./plug/git/lazygit.nix

    ./plug/lsp/lsp.nix
    ./plug/lsp/conform.nix
    ./plug/lsp/none-ls.nix

    ./plug/notes/pencil.nix
    ./plug/notes/twilight.nix
    ./plug/notes/zen-mod.nix
    ./plug/notes/markdown-preview.nix

    ./plug/snippets/luasnip.nix

    ./plug/treesitter/treesitter-textobjects.nix
    ./plug/treesitter/treesitter-context.nix
    ./plug/treesitter/treesitter.nix

    ./plug/ui/alpha.nix
    ./plug/ui/bufferline.nix
    ./plug/ui/lualine.nix
    ./plug/ui/noice.nix
    ./plug/ui/telescope.nix
    ./plug/ui/nvim-notify.nix

    ./plug/utils/nvim-autopairs.nix
    ./plug/utils/oil.nix
    ./plug/utils/whichkey.nix
    ./plug/utils/hardtime.nix
  ];
}

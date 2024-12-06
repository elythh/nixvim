{ config, lib, ... }:
{
  imports = [
    ./autocommands.nix
    ./keys.nix
    ./sets.nix
    ./highlight.nix

    ./plug/colorscheme/colorscheme.nix

    ./plug/completion/avante.nix
    ./plug/completion/cmp.nix
    ./plug/completion/copilot-cmp.nix
    ./plug/completion/schemastore.nix

    ./plug/git/gitblame.nix
    ./plug/git/gitlinker.nix
    ./plug/git/gitsigns.nix

    ./plug/lsp/conform.nix
    ./plug/lsp/lsp.nix
    ./plug/lsp/lspsaga.nix
    ./plug/lsp/none-ls.nix
    ./plug/lsp/trouble.nix

    ./plug/mini

    ./plug/snacks/default.nix

    ./plug/snippets/luasnip.nix

    ./plug/statusline/lualine.nix
    #./plug/statusline/staline.nix

    ./plug/treesitter/treesitter-context.nix
    ./plug/treesitter/treesitter-textobjects.nix
    ./plug/treesitter/treesitter.nix

    ./plug/ui/bufferline.nix
    ./plug/ui/dressing.nix
    ./plug/ui/indent-blankline.nix
    ./plug/ui/noice.nix
    ./plug/ui/nvim-notify.nix
    ./plug/ui/smart-splits.nix
    ./plug/ui/telescope.nix

    ./plug/utils/comment-box.nix
    ./plug/utils/comment.nix
    ./plug/utils/helm.nix
    ./plug/utils/markview.nix
    ./plug/utils/obsidian.nix
    ./plug/utils/spectre.nix
    ./plug/utils/trunk.nix
    ./plug/utils/ufo.nix
    ./plug/utils/undotree.nix
  ];
  options = {
    theme = lib.mkOption {
      default = lib.mkDefault "paradise";
      type = lib.types.enum [
        "aquarium"
        "decay"
        "edge-dark"
        "everblush"
        "everforest"
        "far"
        "gruvbox"
        "jellybeans"
        "material"
        "material-darker"
        "mountain"
        "ocean"
        "oxocarbon"
        "paradise"
        "tokyonight"
        "yoru"
      ];
    };
    assistant = lib.mkOption {
      default = "none";
      type = lib.types.enum [
        "copilot"
        "none"
      ];
    };
  };
  config = {
    # The base16 theme to use, if you want to use another theme, change it in colorscheme.nix
    theme = "far";
    extraConfigLua = ''
      _G.theme = "${config.theme}"
    '';
  };
}

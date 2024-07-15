{pkgs, ...}: {
  plugins.treesitter = {
    enable = true;
    settings = {
      indent.enable = true;
    };
    folding = true;
    nixvimInjections = true;
    grammarPackages = [
      pkgs.tree-sitter-grammars.tree-sitter-c
    ];
  };
}

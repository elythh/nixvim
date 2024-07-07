{ pkgs, ... }:
let
  nu-grammar = pkgs.tree-sitter.buildGrammar {
    language = "nu";
    version = "0.0.0+rev=358c4f5";
    src = pkgs.fetchFromGitHub {
      owner = "nushell";
      repo = "tree-sitter-nu";
      rev = "0bb9a602d9bc94b66fab96ce51d46a5a227ab76c";
      hash = "sha256-A5GiOpITOv3H0wytCv6t43buQ8IzxEXrk3gTlOrO0K0=";
    };
  };
in
{
  filetype.extension.liq = "liquidsoap";
  filetype.extension.nu = "nu";

  plugins.treesitter = {
    enable = true;
    indent = true;
    folding = true;
    languageRegister.nu = "nu";
    languageRegister.liq = "liquidsoap";
    nixvimInjections = true;
    grammarPackages =
      [
        nu-grammar
      ]
      ++ pkgs.vimPlugins.nvim-treesitter.allGrammars;
  };

  extraFiles = {
    "/queries/nu/highlights.scm" = builtins.readFile "${nu-grammar}/queries/nu/highlights.scm";
    "/queries/nu/injections.scm" = builtins.readFile "${nu-grammar}/queries/nu/injections.scm";
  };
  extraConfigLua = ''
    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

    parser_config.liquidsoap = {
      filetype = "liquidsoap",
    }
    parser_config.nu = {
      filetype = "nu",
    }
  '';
}

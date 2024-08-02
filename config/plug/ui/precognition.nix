{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "precognition.nvim";
      version = "v1.0.0";
      src = pkgs.fetchFromGitHub {
        owner = "tris203";
        repo = "precognition.nvim";
        rev = "2a566f03eb06859298eff837f3a6686dfa5304a5";
        hash = "sha256-XLcyRB4ow5nPoQ0S29bx0utV9Z/wogg7c3rozYSqlWE=";
      };
    })
  ];
  extraConfigLua = ''
    require('precognition').setup({ })
  '';
}

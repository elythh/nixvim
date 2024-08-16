{ pkgs, ... }:
let
  version = "v1.0.2";
in
{
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "comment-box.nvim";
      inherit version;
      src = pkgs.fetchFromGitHub {
        owner = "LudoPinelli";
        repo = "comment-box.nvim";
        rev = "refs/tags/${version}";
        hash = "sha256-2P8Zyd5ucOvihZdjgSmr7YlV0yuCn+LyHkCj9gPx/CY=";
      };
    })
  ];
}

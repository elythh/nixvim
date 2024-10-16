{ pkgs, ... }:
let

  pname = "neovim-trunk";
  version = "v0.1.3";
in
{
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      inherit pname version;
      src = pkgs.fetchFromGitHub {
        owner = "trunk-io";
        repo = "neovim-trunk";
        rev = "refs/tags/${version}";
        hash = "sha256-xfGK1wlpq1aELMdcEQMvJTWJUyEryPuxyywEUYugjc8=";
      };
    })
  ];
}

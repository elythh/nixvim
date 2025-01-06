{ pkgs, ... }:
let

  pname = "showkeys";
  version = "v0.1";
in
{
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      inherit pname version;
      src = pkgs.fetchFromGitHub {
        owner = "nvzone";
        repo = "showkeys";
        rev = "891f95ef94ac80bc7690a0df09c6112b4b822cac";
        hash = "sha256-a4ZMn3dmLLjuh1V6ASIN6uWWB9XRtjnoqj+2L8AIZys=";
      };
    })
  ];
}

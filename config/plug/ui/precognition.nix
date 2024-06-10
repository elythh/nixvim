{pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "precognition.nvim";
      version = "v1.0.0";
      src = pkgs.fetchFromGitHub {
        owner = "tris203";
        repo = "precognition.nvim";
        rev = "5255b72c52b1159e9757f50389bde65e05e3bfb1";
        hash = "sha256-AqWYV/59ugKyOWALOCdycWVm0bZ7qb981xnuw/mAVzM=";
      };
    })
  ];
  extraConfigLua = ''
    require('precognition').setup({ })
  '';
}

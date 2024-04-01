{pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "biscuit.nvim";
      version = "1.0";
      src = pkgs.fetchFromGitHub {
        owner = "Biscuit-Colorscheme";
        repo = "nvim";
        rev = "c375565509e47dce6d693bfc7028b7f26dbf2bf7";
        hash = "sha256-VQbhdbDf8POB6+sR4Ys/k7suF8vQvXnFmeyJk6Zyc/o=";
      };
    })
  ];
}

{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "prism";
      src = pkgs.fetchFromGitHub {
        owner = "chadcat7";
        repo = "prism";
        rev = "8cffd24e622bf7527a615a2790af0bfcf752bb00";
        hash = "sha256-cl5D2d+YOBUtSy5w2IKiz/sEIaLbXsE/9/UzuVcgzGQ=";
      };
    })
  ];
  extraConfigLua = ''
    require("prism").setup({
        currentTheme = "onedarker",
        reset = false,
    })
  '';
}

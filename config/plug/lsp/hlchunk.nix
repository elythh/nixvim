{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "hlchunk";
      src = pkgs.fetchFromGitHub {
        owner = "shellRaining";
        repo = "hlchunk.nvim";
        rev = "882d1bc86d459fa8884398223c841fd09ea61b6b";
        hash = "sha256-fvFvV7KAOo7xtOCjhGS5bDUzwd10DndAKs3++dunED8=";
      };
    })
  ];
}

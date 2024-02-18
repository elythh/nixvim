{ pkgs, ... }: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "telescope-gitmoji.nvim";
      version = "1.0";
      src = pkgs.fetchFromGitHub {
        owner = "olacin";
        repo = "telescope-gitmoji.nvim";
        rev = "7e89f41aa25fb06ad5fe27b5524494266e08e3f9";
        hash = "sha256-TSiW/DIJ1G2IlJRpAs+UFZa5ewlyad6lmmis2iOFz3E=";
      };
    })
  ];
  extraConfigLua = ''
    require("telescope").load_extension("gitmoji")
  '';
  keymaps = [
    {
      mode = "n";
      key = "<leader>gm";
      action = "<cmd>Telescope gitmoji<CR>";
      options = {
        desc = "Gitmoji";
      };
    }
  ];
}

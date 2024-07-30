{ pkgs, ... }: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "markview.nvim";
      version = "0.0.1";
      src = pkgs.fetchFromGitHub {
        owner = "OXY2DEV";
        repo = "markview.nvim";
        rev = "8537f7f03e4683b9ef98202e7a0286373a5b7135";
        hash = "sha256-w6yn8aNcJMLRbzaRuj3gj4x2J/20wUROLM6j39wpZek=";
      };
    })
  ];

  extraConfigLua = ''
    require("markview").setup();
  '';
}

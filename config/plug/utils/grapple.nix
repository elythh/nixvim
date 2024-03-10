{pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "grapple.nvim";
      version = "1.0";
      src = pkgs.fetchFromGitHub {
        owner = "cbochs";
        repo = "grapple.nvim";
        rev = "59d458e378c4884f22b7a68e61c07ed3e41aabf0";
        hash = "sha256-4k8BE9i8kG4pL7Fj0xw9cG8sjA0u4jzJ40WSV/lBFhY=";
      };
    })
  ];

  extraConfigLua = ''
    require('grapple').setup({
      scope = "git_branch",
    })
  '';
}

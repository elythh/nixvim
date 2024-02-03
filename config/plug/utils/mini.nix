{
  plugins.mini = {
    enable = false;
    modules = {
      base16 = {
        palette = import ../../colorscheme/flexoki.nix { };
        use_cterm = true;
      };
    };
  };
}

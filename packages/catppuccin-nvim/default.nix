{
  inputs,
  vimUtils,
}:
vimUtils.buildVimPlugin {
  pname = "catppuccin-nvim";
  src = inputs.catppuccin-nvim;
  version = inputs.catppuccin-nvim.shortRev;

  nvimSkipModule = [
    "catppuccin.lib.vim.init"
    "catppuccin.groups.integrations.noice"
    "catppuccin.groups.integrations.feline"
  ];
}

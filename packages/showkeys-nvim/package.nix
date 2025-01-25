{
  inputs,
  vimUtils,
}:
vimUtils.buildVimPlugin {
  pname = "showkeys-nvim";
  src = inputs.showkeys-nvim;
  version = inputs.showkeys-nvim.shortRev;
}

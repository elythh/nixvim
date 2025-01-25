{
  inputs,
  vimUtils,
}:
vimUtils.buildVimPlugin {
  pname = "volt-nvim";
  src = inputs.volt-nvim;
  version = inputs.volt-nvim.shortRev;

}

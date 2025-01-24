{
  inputs,
  vimUtils,
}:
vimUtils.buildVimPlugin {
  pname = "trouble-nvim";
  src = inputs.trouble-nvim;
  version = inputs.trouble-nvim.shortRev;

  nvimSkipModule = [
    "trouble.docs"
  ];
}

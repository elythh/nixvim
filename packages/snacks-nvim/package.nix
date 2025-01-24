{
  inputs,
  pkgs,
  vimUtils,
}:
vimUtils.buildVimPlugin {
  pname = "snacks-nvim";
  src = inputs.snacks-nvim;
  version = inputs.snacks-nvim.shortRev;

  dependencies = [ pkgs.vimPlugins.trouble-nvim ];

  nvimSkipModule = [
    "snacks.dashboard"
    "snacks.indent"
    "snacks.input"
    "snacks.notifier"
    "snacks.picker.actions"
    "snacks.picker.config.highlights"
    "snacks.picker.util.db"
    "snacks.terminal"
    "snacks.win"
    "snacks.zen"
    "snacks.dim"
    "snacks.git"
    "snacks.lazygit"
    "snacks.scratch"
    "snacks.scroll"
    "snacks.words"
  ];
}

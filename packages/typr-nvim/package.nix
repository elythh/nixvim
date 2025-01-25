{
  inputs,
  vimUtils,
}:
vimUtils.buildVimPlugin {
  pname = "typr-nvim";
  src = inputs.typr-nvim;
  version = inputs.typr-nvim.shortRev;

  nvimSkipModule = [
    "typr"
    "typr.mappings"
    "typr.ui.init"
    "typr.ui.layout"
    "typr.ui.hl"
    "typr.api"
    "typr.stats.init"
    "typr.stats.dashboard"
    "typr.stats.history"
    "typr.stats.layout"
    "typr.stats.keystrokes"
    "typr.stats.utils"
    "typr.utils"
  ];
}

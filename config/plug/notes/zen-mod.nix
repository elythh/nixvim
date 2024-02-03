{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
    zen-mode-nvim
  ];
}

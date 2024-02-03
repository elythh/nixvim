{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
    vim-pencil
  ];
}

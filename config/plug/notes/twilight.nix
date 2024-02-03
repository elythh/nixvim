{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
    twilight-nvim
  ];
}

{ lib, ... }:
{
  plugins.indent-blankline = {
    enable = lib.mkDefault true;
  };
}

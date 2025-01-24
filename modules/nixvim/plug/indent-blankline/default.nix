{ lib, ... }:
{
  plugins.indent-blankline = {
    enable = lib.mkDefault false;
  };
}

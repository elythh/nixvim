{
  lib,
  self,
  ...
}:
let
  inherit (builtins) readDir;
  inherit (lib.attrsets) foldlAttrs;
  inherit (lib.lists) optional;
  by-name = ./plug;
in
{
  imports =
    (foldlAttrs (
      prev: name: type:
      prev ++ optional (type == "directory") (by-name + "/${name}")
    ) [ ] (readDir by-name))
    ++ [
      ./autocommands.nix
      ./keys.nix
      ./options.nix
      ./sets.nix
      ./highlight.nix
    ];
  nixpkgs = {
    overlays = lib.attrValues self.overlays;
    config.allowUnfree = true;
  };
}

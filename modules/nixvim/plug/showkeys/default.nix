{ self, system, ... }:
{
  extraPlugins = [
    self.packages.${system}.showkeys-nvim
  ];
}

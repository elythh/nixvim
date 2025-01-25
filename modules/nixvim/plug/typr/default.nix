{ self, system, ... }:
{
  extraPlugins = [
    self.packages.${system}.volt-nvim
    self.packages.${system}.typr-nvim
  ];
}

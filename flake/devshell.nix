{
  perSystem =
    { pkgs, ... }:
    {
      devShells.default = pkgs.mkShell {
        name = "Elyth's Nixvim development shell";
        meta.description = "Shell environment for modifying this Nix configuration";
        packages = with pkgs; [
          nixd
        ];
      };
    };
}

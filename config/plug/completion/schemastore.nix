{pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "schemastore";
      version = "1.0";
      src = pkgs.fetchFromGitHub {
        owner = "b0o";
        repo = "schemastore.nvim";
        rev = "f7cae6f1b38cb296f48ce1a9c5ed1a419d912a42";
        hash = "sha256-FGKDsiDw3VBUNj38JqwkMxI7JxZY0bikS+oMZTGOuVU=";
      };
    })
  ];

  extraConfigLua = ''
      require('lspconfig').yamlls.setup {
      settings = {
        yaml = {
          schemaStore = {
            -- You must disable built-in schemaStore support if you want to use
            -- this plugin and its advanced options like `ignore`.
            enable = false,
            -- Avoid TypeError: Cannot read properties of undefined (reading 'length')
            url = "",
          },
          schemas = require('schemastore').yaml.schemas(),
        },
      },
    }
  '';
}

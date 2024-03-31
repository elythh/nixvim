<div align="center">
    <img src="assets/neovim-flake-logo-work.svg" alt="neovim-flake Logo"  width="200">
</div>

# Nixvim config

My neovim config using nixvim.

<img src="assets/1.png" alt="nvim">

## Configuring

To start configuring, just add or modify the nix files in `./config`.
If you add a new configuration file, remember to add it to the
[`config/default.nix`](../config/default.nix) file

### Current plugins

- **[colorscheme/](../config/plug/colorscheme):** Theme configuration
- **[completion/](../config/plug/completion)**

  - **[nvim-cmp](../config/plug/completion/cmp.nix):** Completion plugin for nvim + emoji support
  - **[copilot-cmp](../config/plug/completion/copilot-cmp.nix):** Completion support for GitHub copilot
  - **[lspkind](../config/plug/completion/copilot-cmp.nix):** vscode-like pictograms for neovim lsp completion items

- **[git/](../config/plug/git)**
  - **[gitsigns](../config/plug/git/gitsigns.nix):** Git integration for buffers
  - **[lazygit](../config/plug/git/lazygit.nix):** The **best** git TUI, as a neovim plugin
  - **[worktree](../config/plug/git/worktree.nix):** Make using git worktrees easier
- **[lsp/](../config/plug/lsp)**
  - **[conform](../config/plug/lsp/conform.nix):** Formatter plugin
  - **[fidget](../config/plug/lsp/fidget.nix):** LSP progress notifications
  - **[hlchunk](../config/plug/lsp/hlchunk.nix):** Highlight useful things like current chunk or indent lines
  - **[lsp](../config/plug/lsp/lsp.nix):** LSP configs
  - **[lspsaga](../config/plug/lsp/lspsaga.nix):** Cool LSP features
  - **[none-ls](../config/plug/lsp/none-ls.nix):** null-ls replacement. Use nvim as LSP
  - **[trouble](../config/plug/lsp/trouble.nix):** Pretty interface for working with LSP
- **[snippet/](../config/plug/snippet)**

  - **[luasnip](../config/plug/snippet/luasnip.nix):** Snippet engine in lua

- **[statusline/](../config/plug/statusline)**

  - **[lualine](../config/plug/statusline/lualine.nix):** Status line for neovim
  - **[staline](../config/plug/statusline/staline.nix):** Some soviet guy that died a long time ago

- **[treesitter/](../config/plug/treesitter)**
  - **[treesitter-context](../config/plug/treesitter/treesitter-context.nix):** Show code context
  - **[treesitter-textobject](../config/plug/treesitter/treesitter-textobject.nix):** Allow cool text manupulation thanks to TS
  - **[treesitter](../config/plug/treesitter/treesitter.nix):** Parser generator tool to build a syntax tree of the current buffer
- **[ui/](../config/plug/ui)**
  - **[alpha](../config/plug/ui/alpha.nix):** Dashboard
  - **[bufferline](../config/plug/ui/bufferline.nix):** VSCode like line for buffers
  - **[noice](../config/plug/ui/noice.nix):** Better nvim UI
  - **[nvim-notify](../config/plug/ui/nvim-notify.nix):** Notification manager
  - **[staline](../config/plug/ui/nvim-notify.nix):** Notification manager
  - **[telescope](../config/plug/ui/telescope.nix):** Best plugin ever ?
- **[utils/](../config/plug/utils)**
  - **[CopilotChat](../config/plug/ui/copilot.nix):** Chat with copilot in nvim
  - **[dap](../config/plug/ui/dap.nix):** Debug in nvim
  - **[flash](../config/plug/ui/flash.nix):** Navigate in file with a few keystrokes
  - **[grapple](../config/plug/ui/grapple.nix):** Quickly switch between buffers (Harpoon replacement)
  - **[hardtime](../config/plug/ui/hardtime.nix):** Learn vim motions, the hard way
  - **[harpoon](../config/plug/ui/harpoon.nix):** Quickly switch between buffers
  - **[illuminate](../config/plug/ui/illuminate.nix):** Highlight word under the cursor
  - **[nvim-autopairs](../config/plug/ui/nvim-autopairs.nix):** Autopairs in nvim
  - **[oil](../config/plug/ui/oil.nix):** Navigate in your working folder with a buffer
  - **[ufo](../config/plug/ui/ufo.nix):** Folding plugin
  - **[undotree](../config/plug/ui/undotree.nix):** Undo history visualizer
  - **[whichkey](../config/plug/ui/whichkey.nix):** Popup to display keybindings

## Testing your new configuration

To test your configuration simply run the following command

```
nix run .
```

If you have nix intalled, you can directly run my config from anyhwere

You can try running mine with:

```shell
nix run 'github:elythh/nixvim'
```

## Installing into NixOS configuration

This `nixvim` flake will output a derivation that you can easily include
in either `home.packages` for `home-manager`, or
`environment.systemPackages` for `NixOS`. Or whatever happens with darwin?

You can add my `nixvim` configuration as an input to your `NixOS` configuration like:

```nix
{
 inputs = {
    nixvim.url = "github:elythh/nixvim";
 };
}
```

### Direct installation

With the input added you can reference it directly.

```nix
{ inputs, system, ... }:
{
  # NixOS
  environment.systemPackages = [ inputs.nixvim.packages.${system}.default ];
  # home-manager
  home.packages = [ inputs.nixvim.packages.${system}.default ];
}
```

The binary built by `nixvim` is already named as `nvim` so you can call it just
like you normally would.

### Installing as an overlay

Another method is to overlay your custom build over `neovim` from `nixpkgs`.

This method is less straight-forward but allows you to install `neovim` like
you normally would. With this method you would just install `neovim` in your
configuration (`home.packges = with pkgs; [ neovim ]`), but you replace
`neovim` in `pkgs` with your derivation from `nixvim`.

```nix
{
  pkgs = import inputs.nixpkgs {
    inherit system;
    overlays = [
      (final: prev: {
        neovim = inputs.nixvim.packages.${system}.default;
      })
    ];
  }
}
```

### Bonus lazy method

You can just straight up alias something like `nix run
'github:elythh/nixvim'` to `nvim`.

## Credits

- [yavko](https://github.com/yavko) for the logo

# deepwater.nvim

A Neovim colorscheme inspired by Jonathan Blow’s *naysayer* (Emacs).

Deep teal background, warm foreground text, semantic highlighting,
and minimal stylistic noise (no bold, no italics).

<img width="2523" height="1373" alt="image" src="https://github.com/user-attachments/assets/3dc8ff26-35a3-4b53-aa78-2c1f49ebd50a" />

## Installation

### lazy.nvim
```lua
{
  "dgrco/deepwater.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("deepwater")
  end,
}
```

## Supported plugins & features

Deepwater provides explicit highlight support for:

- **Neovim core**
  - UI elements (line numbers, splits, floating windows)
  - Search, visual selection, matchparen
  - Syntax highlighting (legacy + Tree-sitter)

- **Tree-sitter**
  - Variables, functions, types, constants, operators

- **LSP / Diagnostics**
  - Errors, warnings, and hints via built-in diagnostic groups

- **Completion**
  - `nvim-cmp` (completion menu and documentation windows)

- **Keybinding helpers**
  - `which-key.nvim`

- **Version control**
  - `gitsigns.nvim`

- **Terminal**
  - Matching Alacritty theme included

### Tested with

- Neovim ≥ 0.11
- `nvim-treesitter`
- `nvim-cmp`
- `which-key.nvim`
- `gitsigns.nvim`

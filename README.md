# deepwater.nvim

A Neovim colorscheme inspired by Jonathan Blow’s Emacs theme.

Deep teal background, warm foreground text, semantic highlighting,
and minimal stylistic noise (no bold, no italics).

<img width="1828" height="1331" alt="image" src="https://github.com/user-attachments/assets/c574cada-8ec4-49b4-8653-101b802056d7" />


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
 
- **Status Lines**
  - `mini.statusline`

- **Extras**
  - Matching Alacritty theme
  - Matching Foot theme
  - Matching Emacs theme

### Tested with

- Neovim ≥ 0.11
- `nvim-treesitter`
- `nvim-cmp`
- `which-key.nvim`
- `gitsigns.nvim`

## Acknowledgements  
- naysayer-theme.el [https://github.com/nickav/naysayer-theme.el]
- Wallpaper [https://www.reddit.com/r/wallpaper/comments/qlr375/3840x2160_astronaut/]

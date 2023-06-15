# Vim Remaps README

This README provides an overview of the remaps made in the Vim configuration file, explaining the functionality and keybindings associated with each remap.

## Keymaps

### Telescope Plugin

- `<leader>/`: Executes the Ex command prompt provided by the [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) plugin. It enables fuzzy searching and navigation of files.

### Harpoon Plugin

- `<leader>n`: Adds a file to the [Harpoon](https://github.com/theprimeagen/harpoon) plugin. It facilitates quick navigation between frequently used files.

- `<leader>h`: Toggles the Harpoon plugin's quick menu, allowing you to switch between different file targets.

- `<leader>1`: Navigates to file 1 using the Harpoon plugin.

- `<leader>2`: Navigates to file 2 using the Harpoon plugin.

- `<leader>3`: Navigates to file 3 using the Harpoon plugin.

- `<leader>4`: Navigates to file 4 using the Harpoon plugin.

### Git Fugitive Plugin

- `<leader>gs`: Executes the `git` command provided by the [vim-fugitive](https://github.com/tpope/vim-fugitive) plugin. It integrates Git commands within Vim, allowing you to perform various Git operations.

### Other Remaps

- `<leader>c`: Copies the current line or selected text to the clipboard.

## LSP-related Keymaps

The following keymaps are associated with the Language Server Protocol (LSP) integration:

- `gd`: Jumps to the definition of the symbol under the cursor.

- `K`: Shows the hover documentation for the symbol under the cursor.

- `<leader>vws`: Searches for symbols in the workspace.

- `<leader>vd`: Opens the diagnostics floating window.

- `[d`: Jumps to the next diagnostic.

- `]d`: Jumps to the previous diagnostic.

- `<leader>.`: Triggers code actions for the current line or selection.

- `<leader>vrr`: Finds references to the symbol under the cursor.

- `<leader>rn`: Renames the symbol under the cursor.

- `<C-h>`: Shows the signature help for the symbol under the cursor.

## Additional Plugins

The configuration also includes several additional plugins that enhance Vim's functionality:

- [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim): Applies the Kanagawa-Dragon color scheme.

- [osc52](https://github.com/ojroques/nvim-osc52): Enables OSC52 clipboard integration.

- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): Offers advanced syntax highlighting and parsing.

- [undotree](https://github.com/mbbill/undotree): Provides a visual representation of undo history.

- [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim): Simplifies LSP integration and autocompletion.


-- leader space
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>/", vim.cmd.Ex)

-- system clipboard
vim.opt.clipboard:append("unnamedplus")

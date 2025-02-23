-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- jk into insert mode
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = false })

-- Select all
vim.api.nvim_set_keymap("n", "<C-a>", "gg<S-v>G", { noremap = false })

-- Moving up & down quick
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = false })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = false })

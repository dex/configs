-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Resize window using <ctrl> arrow keys
vim.keymap.set("n", "<S-Up>", "<cmd>cprevious<cr>", { desc = "Pevious Error" })
vim.keymap.set("n", "<S-Down>", "<cmd>cnext<cr>", { desc = "Next Error" })

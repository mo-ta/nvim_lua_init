-- local opts = { noremap = true, silent = true }
local opts = { noremap = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap
--- 
keymap('', 'm', '<Nop>', opts)
keymap('', 's', '<Nop>', opts)
keymap('', ',', '<Nop>', opts)
keymap('', '#', '<Nop>', opts)

--- set leader, localleader
vim.g.mapleader = 's'
vim.g.maplocalleader = ' '


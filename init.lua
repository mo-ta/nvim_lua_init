require '01_path_setting'  -- lua/01_path_setting.lua
require '02_skip_plugin'  -- lua/02_skip_plugin.lua
require '03_before_load_plugin'  -- lua/03_before_load_plugin.lua
require '11_plugin'-- lua/11_plugin.lua
vim.cmd[[autocmd BufWritePost 11_plugins.lua PackerCompile]]
require '21_option'-- lua/21_option.lua
require '31_function'-- lua/31_function.lua
require '41_keymap'-- lua/41_keymap.lua



local opts = { noremap = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap
keymap('n', '<Leader>j', ':<C-u>call L_open_junkfile()<CR>', opts) 



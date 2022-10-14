-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/motoki/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/motoki/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/motoki/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/motoki/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/motoki/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\2ª\2\0\0\3\0\f\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0=\2\t\0015\2\n\0=\2\v\1B\0\2\1K\0\1\0\rmappings\1\0\2\nextra\2\nbasic\2\nextra\1\0\3\nabove\20<LocalLeader>cO\beol\20<LocalLeader>cA\nbelow\20<LocalLeader>co\ropleader\1\0\2\nblock\19<LocalLeader>C\tline\19<LocalLeader>c\ftoggler\1\0\2\nblock\20<localleader>CC\tline\20<LocalLeader>cc\1\0\2\vsticky\2\fpadding\2\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/motoki/work/nvim_lua/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["accelerated-jk.nvim"] = {
    config = { "\27LJ\2\2Ä\2\0\0\4\0\n\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\0015\2\6\0=\2\a\0014\2\3\0005\3\b\0>\3\1\2=\2\t\1B\0\2\1K\0\1\0\23deceleration_table\1\3\0\0\3ñ\1\3èN\23acceleration_table\1\t\0\0\3\a\3\f\3\17\3\21\3\24\3\28\3\31\3(\25acceleration_motions\1\3\0\0\6h\6l\1\0\3\tmode\16time_driven\23acceleration_limit\3ñ\1\24enable_deceleration\1\nsetup\19accelerated-jk\frequire\0" },
    loaded = true,
    path = "/home/motoki/work/nvim_lua/share/nvim/site/pack/packer/start/accelerated-jk.nvim",
    url = "https://github.com/rainbowhxch/accelerated-jk.nvim"
  },
  ["capture.vim"] = {
    loaded = true,
    path = "/home/motoki/work/nvim_lua/share/nvim/site/pack/packer/start/capture.vim",
    url = "https://github.com/tyru/capture.vim"
  },
  ["indentLine.vim"] = {
    loaded = true,
    path = "/home/motoki/work/nvim_lua/share/nvim/site/pack/packer/start/indentLine.vim",
    url = "https://github.com/vim-scripts/indentLine.vim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\2ø\3\0\0\4\0\24\0%6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\a\0005\3\6\0=\3\b\0025\3\t\0=\3\n\0025\3\v\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\2=\2\19\0015\2\20\0004\3\0\0=\3\b\0024\3\0\0=\3\n\0025\3\21\0=\3\f\0025\3\22\0=\3\14\0024\3\0\0=\3\16\0024\3\0\0=\3\18\2=\2\23\1B\0\2\1K\0\1\0\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\1\0\2\18icons_enabled\2\ntheme\vwombat\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/motoki/work/nvim_lua/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/home/motoki/work/nvim_lua/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nvim-treesitter"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/motoki/work/nvim_lua/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/motoki/work/nvim_lua/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/motoki/work/nvim_lua/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/motoki/work/nvim_lua/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/motoki/work/nvim_lua/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-easymotion"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/motoki/work/nvim_lua/share/nvim/site/pack/packer/opt/vim-easymotion",
    url = "https://github.com/easymotion/vim-easymotion"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/motoki/work/nvim_lua/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-mundo"] = {
    config = { "vim.g.mundo_width = 45", "vim.g.mundo_preview_height = 15", "vim.g.mundo_preview_bottom = 1", "vim.g.mundo_right = 1", "vim.g.mundo_close_on_revert = 0", "vim.g.mundo_auto_preview = 1", "vim.g.mundo_auto_preview_delay = 250", "vim.g.mundo_verbose_graph = 1", "vim.g.mundo_playback_delay = 60", "vim.g.mundo_header= 1", "vim.g.mundo_return_on_revert = 1", "vim.g.mundo_inline_undo = 1", "vim.g.mundo_mirror_graph = 1", "vim.g.mundo_disable = 0", "vim.g.mundo_help  = 0", "vim.g.mundo_preview_statusline = true", "vim.g.mundo_tree_statusline = true" },
    loaded = true,
    path = "/home/motoki/work/nvim_lua/share/nvim/site/pack/packer/start/vim-mundo",
    url = "https://github.com/simnalamburt/vim-mundo"
  },
  ["vim-sandwich"] = {
    loaded = true,
    path = "/home/motoki/work/nvim_lua/share/nvim/site/pack/packer/start/vim-sandwich",
    url = "https://github.com/machakann/vim-sandwich"
  },
  ["vim-submode"] = {
    config = { "vim.g.submode_timeoutlen = 100", "vim.g.submode_keep_leaving_key = 1", "vim.g.submode_always_showsubmode = 1" },
    loaded = true,
    path = "/home/motoki/work/nvim_lua/share/nvim/site/pack/packer/start/vim-submode",
    url = "https://github.com/kana/vim-submode"
  },
  ["vimdoc-ja"] = {
    loaded = true,
    path = "/home/motoki/work/nvim_lua/share/nvim/site/pack/packer/start/vimdoc-ja",
    url = "https://github.com/vim-jp/vimdoc-ja"
  },
  vinarise = {
    loaded = true,
    path = "/home/motoki/work/nvim_lua/share/nvim/site/pack/packer/start/vinarise",
    url = "https://github.com/Shougo/vinarise"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/motoki/work/nvim_lua/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["zephyr-nvim"] = {
    config = { "vim.cmd[[colorscheme zephyr]]" },
    loaded = true,
    path = "/home/motoki/work/nvim_lua/share/nvim/site/pack/packer/start/zephyr-nvim",
    url = "https://github.com/glepnir/zephyr-nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: which-key.nvim
time([[Setup for which-key.nvim]], true)
vim.opt.timeoutlen = 300
time([[Setup for which-key.nvim]], false)
time([[packadd for which-key.nvim]], true)
vim.cmd [[packadd which-key.nvim]]
time([[packadd for which-key.nvim]], false)
-- Setup for: vim-easymotion
time([[Setup for vim-easymotion]], true)
vim.g.EasyMotion_do_mapping = 0
vim.g.EasyMotion_use_migemo = 1
time([[Setup for vim-easymotion]], false)
time([[packadd for vim-easymotion]], true)
vim.cmd [[packadd vim-easymotion]]
time([[packadd for vim-easymotion]], false)
-- Config for: vim-mundo
time([[Config for vim-mundo]], true)
vim.g.mundo_width = 45
vim.g.mundo_preview_height = 15
vim.g.mundo_preview_bottom = 1
vim.g.mundo_right = 1
vim.g.mundo_close_on_revert = 0
vim.g.mundo_auto_preview = 1
vim.g.mundo_auto_preview_delay = 250
vim.g.mundo_verbose_graph = 1
vim.g.mundo_playback_delay = 60
vim.g.mundo_header= 1
vim.g.mundo_return_on_revert = 1
vim.g.mundo_inline_undo = 1
vim.g.mundo_mirror_graph = 1
vim.g.mundo_disable = 0
vim.g.mundo_help  = 0
vim.g.mundo_preview_statusline = true
vim.g.mundo_tree_statusline = true
time([[Config for vim-mundo]], false)
-- Config for: accelerated-jk.nvim
time([[Config for accelerated-jk.nvim]], true)
try_loadstring("\27LJ\2\2Ä\2\0\0\4\0\n\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\0015\2\6\0=\2\a\0014\2\3\0005\3\b\0>\3\1\2=\2\t\1B\0\2\1K\0\1\0\23deceleration_table\1\3\0\0\3ñ\1\3èN\23acceleration_table\1\t\0\0\3\a\3\f\3\17\3\21\3\24\3\28\3\31\3(\25acceleration_motions\1\3\0\0\6h\6l\1\0\3\tmode\16time_driven\23acceleration_limit\3ñ\1\24enable_deceleration\1\nsetup\19accelerated-jk\frequire\0", "config", "accelerated-jk.nvim")
time([[Config for accelerated-jk.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\2ø\3\0\0\4\0\24\0%6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\a\0005\3\6\0=\3\b\0025\3\t\0=\3\n\0025\3\v\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\2=\2\19\0015\2\20\0004\3\0\0=\3\b\0024\3\0\0=\3\n\0025\3\21\0=\3\f\0025\3\22\0=\3\14\0024\3\0\0=\3\16\0024\3\0\0=\3\18\2=\2\23\1B\0\2\1K\0\1\0\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\1\0\2\18icons_enabled\2\ntheme\vwombat\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: vim-submode
time([[Config for vim-submode]], true)
vim.g.submode_timeoutlen = 100
vim.g.submode_keep_leaving_key = 1
vim.g.submode_always_showsubmode = 1
time([[Config for vim-submode]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\2ª\2\0\0\3\0\f\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0=\2\t\0015\2\n\0=\2\v\1B\0\2\1K\0\1\0\rmappings\1\0\2\nextra\2\nbasic\2\nextra\1\0\3\nabove\20<LocalLeader>cO\beol\20<LocalLeader>cA\nbelow\20<LocalLeader>co\ropleader\1\0\2\nblock\19<LocalLeader>C\tline\19<LocalLeader>c\ftoggler\1\0\2\nblock\20<localleader>CC\tline\20<LocalLeader>cc\1\0\2\vsticky\2\fpadding\2\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: zephyr-nvim
time([[Config for zephyr-nvim]], true)
vim.cmd[[colorscheme zephyr]]
time([[Config for zephyr-nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

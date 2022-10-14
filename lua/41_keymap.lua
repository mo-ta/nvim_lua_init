-- local opts = { noremap = true, silent = true }
local opts = { noremap = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap
--- 
keymap('n', '<F8>', ':PackerSync<CR>', opts)
keymap('n', '<F7>', ':PackerCompile<CR>', opts)
keymap('n', '<F5>', ":source $XDG_CONFIG_HOME/nvim/init.lua<CR>", opts)

--- split window
keymap('n', '<LocalLeader>V', ':<C-u>sp<CR>', opts) --horizontal
keymap('n', '<LocalLeader>v', ':<C-u>vs<CR>', opts) --vertical

--- telecope
-- keymap('', '<Leader>b', ':Telescope buffers theme=get_dropdown<CR>', opts) 
keymap('', '<Leader>b', ':Telescope buffers<CR>', opts) 
keymap('', '<Leader>h', ':Telescope oldfiles<CR>', opts) 
keymap('', '<Leader>r', ':Telescope registers<CR>', opts) 
keymap('', '<Leader>k', ':Telescope keymaps<CR>', opts) 
keymap('', '<Leader><F1>', ':Telescope help_tags<CR>', opts) 
keymap('', '<Leader><F2>', ':Telescope man_pages<CR>', opts) 
keymap('', '<Leader>m', ':Telescope marks', opts) 
keymap('', '<Leader>a', ':Telescope ', opts) 

-- other leader
keymap('n', '<Leader>u', ':MundoToggle<CR>', opts)
keymap('n',  '<Leader>i', ':<C-u>Vinarise<CR>', opts)

keymap('n', '<LocalLeader>u', 'U', opts)
keymap('n', 'U', 'C-y', opts)

--- [;] [:] replace
keymap('', ':', ';', opts) 
keymap('', ';', ':', opts) 
keymap('n', 'q;', 'q:', opts)
keymap('n', '<LocalLeader>;', ':<C-u>Capture :', opts)

--- save, quit, reload
keymap('', '<LocalLeader>w', ':w<CR>', opts) 
keymap('', '<LocalLeader>W', ':w!<CR>', opts) 
keymap('', '<LocalLeader>q', ':q<CR>', opts) 
keymap('', '<LocalLeader>Q', ':q!<CR>', opts) 
keymap('', '<LocalLeader>e', ':e!<CR>', opts) 

--- inc dec ---
keymap('n', '-', '<C-X>', opts) 
keymap('n', '+', '<C-A>', opts) 

-- easy jump --
keymap('n', '<LocalLeader><Space>', '<Plug>(easymotion-overwin-f2)', opts)
keymap('x', '<LocalLeader><Space>', '<Plug>(easymotion-bd-f2)', opts)

--- accelated jk ---
keymap('n', 'j', '<Plug>(accelerated_jk_gj)', opts)
keymap('n', 'k', '<Plug>(accelerated_jk_gk)', opts)

--- visualmode togle
keymap('x', 'v', ':<C-u>call L_vmode_toggle()<CR>', opts)

--- Shift + 矢印で領域選択 ---
keymap('n', '<S-Up>', 'v<Up>', opts)
keymap('n', '<S-Down>', 'v<Down>', opts)
keymap('n', '<S-Left>', 'v<Left>', opts)
keymap('n', '<S-Right>', 'v<Right>', opts)
keymap('x', '<S-Up>', '<Up>', opts)
keymap('x', '<S-Down>', '<Down>', opts)
keymap('x', '<S-Left>', '<Left>', opts)
keymap('x', '<S-Right>', '<Right>', opts)

-- let g:sandwich_no_default_key_mappings = 1
-- " Mappping: as, is クエリ指定
-- xmap as  <Plug>(textobj-sandwich-query-a)
-- omap as  <Plug>(textobj-sandwich-query-a)
-- xmap is  <Plug>(textobj-sandwich-query-i)
-- omap is  <Plug>(textobj-sandwich-query-i)
-- 
-- " Mappping: ass, iss 自動範囲認識
-- xmap ass <Plug>(textobj-sandwich-auto-a)
-- omap ass <Plug>(textobj-sandwich-auto-a)
-- xmap iss <Plug>(textobj-sandwich-auto-i)
-- omap iss <Plug>(textobj-sandwich-auto-i)
-- 
-- " Mappping: am, im  文字指定
-- xmap im  <Plug>(textobj-sandwich-literal-query-i)
-- xmap am  <Plug>(textobj-sandwich-literal-query-a)
-- omap im  <Plug>(textobj-sandwich-literal-query-i)
-- omap am  <Plug>(textobj-sandwich-literal-query-a)

-- -------- こじんまりしたkeybind -----------------------------{{{
-- " -- タイポ修正<Insert> --
-- xnoremap <C-T> <Esc><Left>"zx"zpa
-- nnoremap <C-T> <Left>"zx"pz
-- 
-- " -- 行末までヤンク<Normal,Visual> --
-- nnoremap Y y$
-- nnoremap Y y$
-- 
-- " -- 一単語をヤンクされた文字列を置きかえ<Normal> --
-- nnoremap ciy ciw<C-R>0<ESC><Right>
-- nnoremap ciY ciW<C-R>0<ESC><Right>
-- 
-- 
-- " --- modifiable toggle ---
-- nnoremap <silent> <LocalLeader>- :set modifiable!<CR>
-- 
-- " --- pastemode toggle ---
-- nnoremap <silent> <localleader>= :set paste!<cr>
-- 

--- バッファ切り替え ---
-- Submode:buf-change{{{
-- vim.fn['submode#enter_with']('buf-change', 'n', '', '<LocalLeader>b', ':<C-u>bn<CR>') -- 開始:順方向
-- vim.fn['submode#enter_with']('buf-change', 'n', '', '<LocalLeader>B', ':<C-u>bp<CR>') -- 開始:逆方向
-- vim.fn['submode#leave_with']('buf-mode', 'n', '', ' ')                                -- 終了
-- vim.fn['submode#map']('buf-change', 'n', '', 'b', ':<C-u>bn<CR>')                     -- 順方向トグル
-- vim.fn['submode#map']('buf-change', 'n', '', 'b', ':<C-u>bp<CR>')                     -- 逆方向トグル
-- 
-- " {List(Denite)}: <Leader>
-- call submode#map('buf-change', 'n', '', '<Leader>', '<CR>:Denite buffer<CR>') " denite
-- "}}}
--

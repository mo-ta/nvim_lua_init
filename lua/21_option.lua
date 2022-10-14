-- ウガンダ非表示
vim.opt.shortmess:append({I = true })
-- 編集中のファイルをタイトルに表示
vim.opt.title = true

--- viminfo(shada) ---
vim.opt.viminfo = [['100,:1000,@500,f1,/500,<1000,h,%]]

-- 行番号表示
vim.opt.number = true

-- 編集中でもバッファを開く
vim.opt.hidden = true

-- コマンド履歴
vim.opt.history = 10000

-- 上下のスクロールしない高さ
vim.opt.scrolloff = 2

-- 長い行もちゃんと表示
vim.opt.display = 'lastline'

vim.opt.backupdir = vim.env.HOME .. '/.vim/backup'

-- 仮想編集できるようにする
vim.opt.virtualedit:append({
    'block',
    'onemore',
})

-- 補完リストをEnterで選択、選択中は挿入されない
vim.opt.completeopt = {
    'menuone',
    'noinsert',
}

-- <BS>キーで全部(字下げや改行)消去できる。
vim.opt.backspace = {
    'indent',
    'eol',
    'start',
}

-- Beep音なし
vim.opt.errorbells = false

-- タブ入力でSpaceに置き換わる
vim.opt.expandtab = true

-- 自動シフトでのシフト量
vim.opt.shiftwidth = 4

-- タブのシフト量
vim.opt.tabstop= 4

-- ワイルドメニュー設定 コマンドラインモードでTAB補完
vim.opt.wildmenu = true
vim.opt.wildmode = {
    'list:longest',
    'full',
}

-- helpは日本語優先
vim.opt.helplang = {
    'ja',
    'en',
}

-- 補完ウィンドウの高さ
vim.opt.pumheight = 10

-- 改行時に前の行のインデントを継続する
vim.opt.autoindent = true

-- 対応する括弧のハイライト有効
vim.opt.showmatch = true

-- マッチする括弧のハイライト時間 *0.1sec
vim.opt.matchtime = 1

-- ファイルエンコーディングの設定
vim.opt.fileencodings = {
    'utf-8',
    'cp932',
    'euc-jp',
    'jis',
}

-- ファイルフォーマットの設定
vim.opt.fileformats = {
    'unix',
    'dos',
    'mac',
}

-- ステータスラインを常に表示２
vim.opt.laststatus = 2

-- runtimepathに行ディレクトリを追加
vim.opt.runtimepath:append(os.getenv('VIM'))

-- ツールバー消去(CUIでは無効)
-- vim.opt.guioptions:append({T = true})

-- メニューバー非表示(CUIでは無効)
-- vim.opt.guioptions:append('m')

-- Tab、行末の半角スペース(SpecialKey)の可視化
vim.opt.list = true
vim.opt.listchars = {
    --tab = '^',
    trail = '~',
    nbsp = '+',
}
--set listchars=tab:^\ ,trail:~

----- Color Syntax ---
-- 背景設定(シンタックス有効にする前)
vim.opt.background = 'dark'

-- True Color 有効
vim.opt.termguicolors = true
-- vim.cmd('colorscheme nightfox')

--- マウス ---
-- どのモードでもマウスを使えるようにする
vim.opt.mouse = 'a'

-- マウスの移動でフォーカスを自動的に切替えない
vim.opt.mousefocus = false

-- 入力時にマウスポインタを隠さない
vim.opt.mousehide = false

--- フォント ---
-- GUI用のフォント設定(CUIでは無効)
vim.opt.guifont = 'Cica:h6'

-- 行間隔の設定
vim.opt.linespace = 1

-- 全角文字の幅
-- vim.opt.ambiwidth = 'double'
vim.opt.ambiwidth = 'single'

-- 置換をインタラクティブに表示
vim.opt.inccommand = 'split'

-- 常にカレントバッファをルートに
vim.opt.autochdir = true

-- クリップボードと連携する
vim.opt.clipboard:append('unnamedplus')
vim.opt.swapfile = false


----------- fold -----------------
vim.opt.foldmethod = 'marker'

-- " 初期はカラムなし
-- set foldcolumn=0 

-- カーソル移動以外ではだいたい折り畳みが自動で開くようにする
vim.opt.foldopen = {
    'block',
    'hor',
    'mark',
    'percent',
    'quickfix',
    'search',
    'tag',
    'undo'
}
-- カーソル移動
vim.opt.whichwrap ='bshl<>[]~]'
--  b - <BS>    ノーマルとビジュアル
--  s - <Space> ノーマルとビジュアル
--  < - <Left>  ノーマルとビジュアル
--  > - <Right> ノーマルとビジュアル
--  ~ - "~"     ノーマル
--  [ - <Left>  挿入と置換
--  ] - <Right> 挿入と置換
--
vim.opt.winblend = 20
vim.opt.pumblend = 20
vim.opt.termguicolors=true

vim.opt.autochdir = true

vim.opt.foldcolumn = '0'
vim.opt.undofile = true
vim.opt.undolevels = 5000
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- 対応括弧を追加
vim.opt.matchpairs:append({
    [[<:>]],
    [[「:」]],
    [[『:』]],
    [[（:）]],
    [[【:】]],
    [[《:》]],
    [[〈:〉]],
    [[［:］]],
    [[':']],
    [[":"]],
})

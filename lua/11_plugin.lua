-- PackerInstall プラグインをインストール
-- PackerUpdate  追加されたプラグインをインストール、既存のものは更新
-- PackerClean   必要なくなったプラグインを削除
-- PackerSync    PackerClean の後に PackerUpdate

vim.cmd[[packadd packer.nvim]] -- ../init.lua
require'packer'.startup(function()
    --- plugin manager ---
    use { 'wbthomason/packer.nvim'}

    --- color scheme ---
    use { 'EdenEast/nightfox.nvim', }
    use { 'glepnir/zephyr-nvim',
--{{{
        requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
        config = 'vim.cmd[[colorscheme zephyr]]',
    }--}}}

    --- status line ---
    use { 'nvim-lualine/lualine.nvim',
--{{{
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function()
            require('lualine').setup {
                options = {
                    icons_enabled = true,
                    theme = 'wombat',
                },
                 sections = {
                   lualine_a = {'mode'},
                   lualine_b = {'branch', 'diff', 'diagnostics'},
                   lualine_c = {'filename'},
                   lualine_x = {'encoding', 'fileformat', 'filetype'},
                   lualine_y = {'progress'},
                   lualine_z = {'location'}
                 },
                 inactive_sections = {
                   lualine_a = {},
                   lualine_b = {},
                   lualine_c = {'filename'},
                   lualine_x = {'location'},
                   lualine_y = {},
                   lualine_z = {}
                 },


            }
        end,
    }--}}}

    --- undo ---
    use{ 'simnalamburt/vim-mundo',
--{{{
        config = { 
            'vim.g.mundo_width = 45',
            'vim.g.mundo_preview_height = 15',
            'vim.g.mundo_preview_bottom = 1',
            'vim.g.mundo_right = 1',
            'vim.g.mundo_close_on_revert = 0',
            'vim.g.mundo_auto_preview = 1',
            'vim.g.mundo_auto_preview_delay = 250',
            'vim.g.mundo_verbose_graph = 1',
            'vim.g.mundo_playback_delay = 60', 
            'vim.g.mundo_header= 1',
            'vim.g.mundo_return_on_revert = 1',
            'vim.g.mundo_inline_undo = 1',
            'vim.g.mundo_mirror_graph = 1',
            'vim.g.mundo_disable = 0',
            'vim.g.mundo_help  = 0',
            'vim.g.mundo_preview_statusline = true',
            'vim.g.mundo_tree_statusline = true',
        },
    }--}}}

    use { 'tyru/capture.vim' }

    --- Indentline ---
    use { 'vim-scripts/indentLine.vim' }

    use { 'rainbowhxch/accelerated-jk.nvim',
--{{{
        config = function()
            require('accelerated-jk').setup({
                mode = 'time_driven',
                enable_deceleration = false,
                acceleration_motions = {'h', 'l'},
                acceleration_limit = 150,
                acceleration_table = { 7, 12, 17, 21, 24, 28, 31, 40 },
                deceleration_table = { {150, 9999} }
            })
        end,
    }--}}}
    
    --- binary editor
    use{'Shougo/vinarise'}

    --- submode ---
    use { "kana/vim-submode",
--{{{
        config = {
            'vim.g.submode_timeoutlen = 100',
            'vim.g.submode_keep_leaving_key = 1',
            'vim.g.submode_always_showsubmode = 1',
        },
    }--}}}

    use { 'machakann/vim-sandwich' }

    use { 'vim-jp/vimdoc-ja' }

    use { 'nvim-telescope/telescope.nvim',
--{{{
      requires =  {'nvim-lua/plenary.nvim'} 
    }--}}}

    use { 'numToStr/Comment.nvim',
    --{{{
    config = function()
        require('Comment').setup {
            padding = true,---Add a space b/w comment and the line
            sticky = true,---Whether the cursor should stay at its position
            ignore = nil,---Lines to be ignored while (un)comment
            ---LHS of toggle mappings in NORMAL mode
            toggler = {
                line = '<LocalLeader>cc',
                block = '<localleader>CC',
            },
            opleader = {
                line = '<LocalLeader>c',
                block = '<LocalLeader>C',
            },
            extra = {
                above = '<LocalLeader>cO',
                below = '<LocalLeader>co',
                eol = '<LocalLeader>cA',
            },
            mappings = {
                basic = true,
                extra = true,
            },
            pre_hook = nil,
            post_hook = nil,
        }
    end,
}--}}}

    use { 'andymass/vim-matchup'}

--     use { 'RRethy/nvim-treesitter-endwise',
-- --{{{
--         config = function()
--             require('nvim-treesitter.configs').setup {
--                 endwise = {
--                     enable = true,
--                 },
--             }
--         end,
--     }--}}}
--     use{'neovim/nvim-lspconfig'}
--     use{'hrsh7th/nvim-cmp'}
--     use{'hrsh7th/cmp-nvim-lsp'}
--     use{'hrsh7th/cmp-nvim-lsp-signature-help'}
--     use{'hrsh7th/cmp-nvim-lsp-document-symbol'}
--     use{'hrsh7th/cmp-buffer'}
--     use{'hrsh7th/cmp-path'}
--     use{'hrsh7th/cmp-omni'}
--     use{'hrsh7th/cmp-emoji'}
--     use{'hrsh7th/cmp-calc'}
--     use{'hrsh7th/cmp-cmdline'}
--     use{'f3fora/cmp-spell'}
--     use{'outkat/cmp-mocword'}
--     use{'uga-rosa/cmp-dictionary'}
--     use{'ray-x/cmp-treesitter'}
--     use{'tzachar/cmp-tabnine'}

    use { 'folke/which-key.nvim',
--{{{
        setup =  'vim.opt.timeoutlen = 300', --すぐ出るように
        config = function()
             require("which-key").setup {
             }
         end,
    }--}}}

    use { 'easymotion/vim-easymotion' ,
--{{{
        setup = {
            'vim.g.EasyMotion_do_mapping = 0', -- mappingは自分で
            'vim.g.EasyMotion_use_migemo = 1',
    	},
   }--}}}

   --{{{
--    use {
--      'phaazon/hop.nvim',
--      branch = 'v2', -- optional but strongly recommended
--      config = function()
--        require('hop').setup {
--            keys = 'etovxqpdygfblzhckisuran'
--        }
--      end,
--    }
--}}}
--
--
end)





---------------------------------------------------------------------------
-- use{'Shougo/dein.vim'}
-- use{'shougo/unite.vim'}
-- use{'shougo/unite-session'}
-- use{'shougo/unite-outline'}
-- use{'sgur/unite-qf'}
-- use{'Shougo/denite.nvim'}
-- use{'Shougo/neomru.vim'}
-- use{'Shougo/neoyank.vim'}
-- use{'Shougo/vimproc.vim'}
-- use{'nixprime/cpsm'}
-- use{'haya14busa/incsearch.vim'}
-- use{'haya14busa/incsearch-migemo.vim'}
-- use{'tlhr/anderson.vim'}
-- use{'dylnmc/novum.vim'}
-- use{'aereal/vim-colors-japanesque'}
-- use{'mo-ta/vim-colors-mota'}
-- use{'joshdick/onedark.vim'}
-- use{'vim-airline/vim-airline'}
-- use{'vim-airline/vim-airline-themes'}
-- use{'direnv/direnv.vim'}
-- use{'itchyny/lightline.vim'}
-- use{"tpope/vim-fugitive"}
-- use{"tpope/vim-rhubarb"}
-- use{'fuenor/qfixhowm'}
-- use{'thinca/vim-quickrun'}
-- use{'cohama/lexima.vim'}
-- use{'easymotion/vim-easymotion'}
-- use{'thinca/vim-ref'}
-- use{'yuku-t/vim-ref-ri'}
-- use{'cespare/vim-toml'}
-- use{'Shougo/vimfiler'}
-- use{'kannokanno/previm'}
-- use{'tpope/vim-markdown'}
-- use{'tyru/open-browser.vim'}
-- use{'LeafCage/yankround.vim'}
-- use{'rhysd/clever-f.vim'}
-- use{'rhysd/accelerated-jk'}
-- use{'machakann/vim-sandwich'}
-- use{'kana/vim-textobj-user'}
-- use{'kana/vim-textobj-line'}
-- use{'terryma/vim-expand-region'}
-- use{'tyru/caw.vim'}
-- use{'Shougo/context_filetype.vim'}
-- use{'JuliaEditorSupport/julia-vim'}
-- use{'delphinus35/typescript-vim'}
-- use{'davidhalter/jedi-vim'}
-- use{'elzr/vim-json'}
-- use{'osyo-manga/vim-precious'}
-- use{'Shougo/context_filetype.vim'}
-- use{'scrooloose/nerdtree'}
-- use{'delphinus35/typescript-vim'}
-- use{'davidhalter/jedi-vim'}
-- use{'elzr/vim-json'}
-- use{'osyo-manga/vim-precious'}
-- use{'Shougo/context_filetype.vim'}
-- use{'scrooloose/nerdtree'}
-- use{'evidens/vim-twig'}
-- use{'w0ng/vim-hybrid'}
-- use{'Shougo/deoplete.nvim'}
-- use{'roxma/nvim-yarp'}
-- use{'roxma/vim-hug-neovim-rpc'}
-- use{'mechatroner/rainbow_csv'}
-- use{'Shougo/deoplete-rct'}
-- use{'fishbullet/deoplete-ruby'}
-- use{'osyo-manga/vim-monster'}
-- use{'ctrlpvim/ctrlp.vim'}
-- use{"Vim-scripts/Align"}
-- use{"aklt/plantuml-syntax"}
-- use{"pepo-le/win-ime-con.nvim"}
-- use{"vim-scripts/ShowMarks"}
-- use{"zah/nim.vim"}
-- use{"w0rp/ale"}
-- use{"mbbill/undotree"}
-- use{"Yggdroot/indentLine"}
-- use{"machakann/vim-highlightedyank"}
-- use{"itchyny/vim-parenmatch"}
-- use{'ncm2/float-preview.nvim'}
-- use{'Shougo/vinarise'}
-- use{'mattn/benchvimrc-vim'}
-- use{'vim-voom/VOoM'}
-- use{'dag/vim-fish'}
-- use{'neoclide/coc.nvim'}
-- use{'scrooloose/nerdtree'}
-- use{'kamykn/popup-menu.nvim'}
-- use{'glacambre/firenvim'}
-- use{'LeafCage/foldCC.vim'}
-- use{'kshenoy/vim-signature'}
-- use{'unblevable/quick-scope'}
-- use{'moll/vim-bbye.git'}
-- use{'schickling/vim-bufonly'}
-- use{'preservim/nerdcommenter'}
-- use{'mg979/vim-xtabline'}
-- use{'junegunn/vim-easy-align'}
-- use{'iamcco/markdown-preview.nvim'}
-- use{'fuenor/im_control.vim'}
-- use{'lilydjwg/colorizer'}
-- use{'Jagua/vim-denite-ghq'}
-- use{'othree/eregex.vim'}
-- use{'heavenshell/vim-pydocstring'}
-- use{'neovim/nvim-lspconfig'}
-- use{'hrsh7th/nvim-cmp'}
-- use{'hrsh7th/cmp-nvim-lsp'}
-- use{'hrsh7th/cmp-nvim-lsp-signature-help'}
-- use{'hrsh7th/cmp-nvim-lsp-document-symbol'}
-- use{'hrsh7th/cmp-buffer'}
-- use{'hrsh7th/cmp-path'}
-- use{'hrsh7th/cmp-omni'}
-- use{'hrsh7th/cmp-emoji'}
-- use{'hrsh7th/cmp-calc'}
-- use{'hrsh7th/cmp-cmdline'}
-- use{'f3fora/cmp-spell'}
-- use{'yutkat/cmp-mocword'}
-- use{'uga-rosa/cmp-dictionary'}
-- use{'ray-x/cmp-treesitter'}
-- use{'tzachar/cmp-tabnine'}

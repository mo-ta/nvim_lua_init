local dirs = {}
dirs.lo = vim.env.XDG_CONFIG_HOME .. '/nvim/local'
dirs.tmp = vim.env.XDG_CONFIG_HOME .. '/nvim/tmp'

dirs.undo  = dirs.tmp .. '/undo'
dirs.backup = dirs.tmp .. '/backup'

dirs.howm  =  dirs.lo .. '/howm'
dirs.junk  =  dirs.lo .. '/junk'
dirs.bookmark =  dirs.lo .. '/bookmark'

--  "--- ディレクトリ確認と自動生成 ---
--  for key in keys(s:dirs)
--    if key != "repo" && !isdirectory(s:dirs[key])
--      call mkdir(iconv(s:dirs[key], &encoding, &termencoding), 'p')
--    endif
--  endfor
--}}}

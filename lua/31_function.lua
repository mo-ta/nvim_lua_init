vim.cmd[[
function! L_open_junkfile()
  let l:junk_dir = "~/junk". strftime('/%y/%m')
  if !isdirectory(l:junk_dir)
    call mkdir(l:junk_dir, 'p')
  endif
  let l:filename = input('junk code: ', l:junk_dir.strftime('/%y%m%d-%h%m.'))
  if l:filename != ''
    execute 'edit ' . l:filename
  endif
endfunction
]]

vim.cmd[[
function! L_vmode_toggle()
  let l:vmode_now = visualmode()
    if l:vmode_now ==# "v"
      call feedkeys("gvV", "n")
    elseif l:vmode_now ==# "V"
      call feedkeys("gv", "n")
    elseif l:vmode_now == ""
      call feedkeys("gvv", "n")
    endif
endfunction
]]


vim.cmd[[
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END
]]

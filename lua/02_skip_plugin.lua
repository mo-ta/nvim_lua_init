local skip_plugins = {
    'gzip',
    'tar',
    'tarPlugin',
    'zip',
    'zipPlugin',
    'rrhelper',
    '2html_plugin',
    'vimball',
    'vimballPlugin',
    'getscript',
    'getscriptPlugin',
    'netrw',
    'netrwPlugin',
    'netrwSettings',
    'netrwFileHandlers',
}

for plugin in pairs(skip_plugins) do
    vim.g['loaded_' .. plugin] = 1
end

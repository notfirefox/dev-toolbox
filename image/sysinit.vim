" Prevent the file from being sourced multiple times
if exists('g:sysinit')
    finish
endif
const g:sysinit = v:true

" Neovim config directory
const config_dir = stdpath('config')

" Finish excecution if config directory already exists
if isdirectory(config_dir)
    finish
endif

" Clone notfirefox/nvim-config into ~/.config/nvim
echo 'Cloning config into ' . config_dir
const repo_url = 'https://github.com/notfirefox/nvim-config.git'
call system(['git', 'clone', repo_url, config_dir])

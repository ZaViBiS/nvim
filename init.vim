set mouse=a " enable mouse
set encoding=utf-8
set number
set noswapfile
 
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent
set fileformat=unix

set colorcolumn=79 " линия на 79 символах 

call plug#begin('~/.config/nvim/plugins')
Plug 'https://github.com/907th/vim-auto-save.git'
Plug 'https://github.com/airblade/vim-gitgutter' " git changes view

" autocomplete
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'https://github.com/Raimondi/delimitMate' " закрытие скобок и т.д.

" themes
Plug 'https://github.com/folke/tokyonight.nvim.git'
Plug 'flazz/vim-colorschemes' " colorscheme

Plug 'https://github.com/ollykel/v-vim' " vlang
Plug 'ap/vim-css-color'
Plug 'https://github.com/rakr/vim-two-firewatch'
call plug#end()

let g:auto_save = 1  " enable AutoSave on Vim startup

"let g:lsp_settings_servers_dir = '$HOME/.local/share/vim-lsp-settings/servers'

" цветовая схема
colorscheme OceanicNext "tokyonight

" автоматическое закрытие скобок, ковычек и вроде всё )
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>o
"inoremap {;<CR> {<CR>};<ESC>O

" start python files
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
nnoremap <buffer> <F10> :exec '!v run .'<cr>
nnoremap <buffer> <F7> :exec '!python -m black' shellescape(@%, 1)<cr>
nnoremap <buffer> <F8> :exec '!v fmt -w .'<cr>
" хз что именно оно делает, но знаю одно. С ним работает выдиление через shift
" source $VIMRUNTIME/mswin.vim

" копирование, вставка, отмена (для X11 требуется установка xclip)
set clipboard+=unnamedplus

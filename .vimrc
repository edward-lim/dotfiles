filetype plugin indent on

call plug#begin('~/.local/share/nvim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'fatih/vim-go'
Plug 'mhinz/vim-grepper'
Plug 'leafgarland/typescript-vim'
Plug 'jason0x43/vim-js-indent'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()

set backspace=indent,eol,start
syntax on
set nu

set clipboard+=unnamedplus

" Go stuff
let g:go_fmt_command = "goimports"

" PyLint configuration file
let g:pymode_lint_config = '$HOME/.pylint.rc'
autocmd FileType python set colorcolumn=120

let g:pymode_lint_options_pep8 = {
        \ 'max_line_length': 120,
        \ 'ignore': 'E501'
    \ }

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:js_indent_typescript = 1

colorscheme molokai

autocmd FileType python set tabstop=4 shiftwidth=4 hlsearch expandtab autoindent
autocmd FileType html set shiftwidth=2 tabstop=2 expandtab softtabstop=2
autocmd FileType typescript set shiftwidth=2 tabstop=2 expandtab softtabstop=2
autocmd FileType javascript set shiftwidth=2 tabstop=2 expandtab softtabstop=2
autocmd FileType css set shiftwidth=2 tabstop=2 expandtab softtabstop=2

map <C-f> :FZF<CR>

execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim
set backspace=indent,eol,start
syntax on
set nu
set tabstop=4
set shiftwidth=4
set hlsearch
set expandtab
set foldlevelstart=10

filetype plugin indent on

" GO stuff
let g:go_fmt_command = "goimports"

" PyLint configuration file
let g:pymode_lint_config = '$HOME/.pylint.rc'
autocmd FileType python set colorcolumn=120

" autocmd QuickFixCmdPost *grep* cwindow
let g:pymode_lint_options_pep8 = {
        \ 'max_line_length': 120,
        \ 'ignore': 'E501'
    \ }

colorscheme molokai
autocmd QuickFixCmdPost *grep* cwindow

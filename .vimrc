filetype plugin indent on

call plug#begin('~/.local/share/nvim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'fatih/vim-go'
Plug 'mhinz/vim-grepper'
Plug 'leafgarland/typescript-vim'
Plug 'jason0x43/vim-js-indent'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'zchee/deoplete-jedi'
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
autocmd FileType proto set tabstop=4 shiftwidth=4 hlsearch expandtab autoindent
autocmd FileType ruby set tabstop=4 shiftwidth=4 hlsearch expandtab autoindent
autocmd FileType html set shiftwidth=2 tabstop=2 expandtab softtabstop=2
autocmd FileType typescript set shiftwidth=2 tabstop=2 expandtab softtabstop=2
autocmd FileType javascript set shiftwidth=2 tabstop=2 expandtab softtabstop=2
autocmd FileType css set shiftwidth=2 tabstop=2 expandtab softtabstop=2

" map ctrl + p to FZF
map <C-p> :FZF<CR>

" map ctrl + n to FZF
map <C-n> :NERDTreeToggle<CR>

" show trailing characters
set listchars=trail:∙,tab:\|\
set list

set ignorecase
set smartcase

let g:deoplete#enable_at_startup = 1
" disable autocomplete
let g:deoplete#disable_auto_complete = 1
" map autocomplete to control + space
if has("gui_running")
    inoremap <silent><expr><C-Space> deoplete#mappings#manual_complete()
else
    inoremap <silent><expr><C-@> deoplete#mappings#manual_complete()
endif

" UltiSnips config
inoremap <silent><expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

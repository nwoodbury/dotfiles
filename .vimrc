"===========================================
" Colors
"===========================================

:colorscheme slate
:set colorcolumn=80

"===========================================
" Misc. Settings
"===========================================

" Tab Spacing
:set expandtab
:set shiftwidth=4
:set softtabstop=4
:set shiftround

" Remove trailing whitspace on save
" Remove trailing whitespace in save
autocmd BufWritePre * :%s/\s\+$//e

" Mouse
:set mouse=a

" In-edit line-splitting (ctrl-o)
imap <C-o> <CR><Esc>O

" Case-insensitive search
:set hls is

"===========================================
" Vundle
"===========================================

 set nocompatible              " be iMproved, required
 filetype off                  " required

 " set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'

 " General Coding
 Plugin 'scrooloose/syntastic'
 Plugin 'Raimondi/delimitMate'
 Plugin 'editorconfig/editorconfig-vim'

 " Python
 Plugin 'klen/python-mode'
 Plugin 'michaeljsmith/vim-indent-object'

 " Javascript
 Plugin 'jelera/vim-javascript-syntax'
 Plugin 'pangloss/vim-javascript'

 " git
 Plugin 'tpope/vim-fugitive'

 " Custom Vundles
 Plugin 'https://github.com/scrooloose/nerdtree'

 " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
 " To ignore plugin indent changes, instead use:
 " `filetype plugin on
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

"===========================================
" Plugin Configuration
"===========================================

" python-mode
let g:pymode_folding = 0
let g:pymode_trim_whitespaces = 1
let g:pymode_indent = 1
let g:pymode_options = 1
let g:pymode_options_max_line_length = 79
let g:pymode_lint = 1
let g:pymode_lint_on_fly = 1
let g:pymode_rope = 1

" NerdTree
autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&
            \ b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.ipynb', '\.ipynb_checkpoints', '\.egg-info', '\.py\~', '__pycache__', '\.egg', '\.bower-*']

" XML
let xml_use_xhtml = 1
let xml_tag_syntax_prefixes = 'html\|xml\|xsl\|section\|docbk'
    " Add 'section' so that the xml tag recognizes angular views
au FileType html,xml let b:delimitMate_matchpairs = "(:),[:],{:}"

:colorscheme slate

"==================================================
" Vundle
"==================================================

 set nocompatible              " be iMproved, required
 filetype off                  " required

 " set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'

 " Coding
 Plugin 'scrooloose/syntastic'
 Plugin 'Raimondi/delimitMate'
 Plugin 'editorconfig/editorconfig-vim'

 " python
 Plugin 'klen/python-mode'
 Plugin 'alfredodeza/pytest.vim'
 Plugin 'ivanov/vim-ipython'
 Plugin 'julienr/vimux-pyutils'
 " Plugin 'davidhalter/jedi-vim'
 Plugin 'michaeljsmith/vim-indent-object'

 " JavaScript
 Plugin 'jelera/vim-javascript-syntax'
 Plugin 'pangloss/vim-javascript'
 Plugin 'nathanaelkane/vim-indent-guides'

 " Custom Vundles
 Plugin 'https://github.com/scrooloose/nerdtree'
 Plugin 'https://github.com/kien/ctrlp.vim'

 " original repos on github
 Plugin 'tpope/vim-fugitive'
 Plugin 'Lokaltog/vim-easymotion'
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 Plugin 'tpope/vim-rails.git'

 " vim-scripts repos
 Plugin 'L9'
 Plugin 'FuzzyFinder'

 " Themes
 Plugin 'Lokaltog/vim-distinguished'

 " non github repos
 " Plugin 'git://git.wincent.com/command-t.git'

 " git repos on your local machine (ie. when working on your own plugin)
 " Plugin 'file:///Users/gmarik/path/to/plugin'
 " ...


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

"==================================================
" Other Settings
"==================================================

" Tab Spacing
:set expandtab
:set shiftwidth=4
:set softtabstop=4
:set shiftround

" Remove trailing whitespace in save
autocmd BufWritePre * :%s/\s\+$//e

" Color Column
:set colorcolumn=80

" Mouse
:set mouse=a

" In-edit line-splitting (ctrl-o)
imap <C-o> <CR><Esc>O

" NerdTree
autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&
            \ b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.ipynb', '\.ipynb_checkpoints', '\.git', '\.egg-info']

" Python
let g:jedi#auto_vim_configuration = 0
set completeopt="menu"
let g:pymode_doc = 0
let g:pymode_run = 0
let g:pymode_lint = 1
let g:pymode_lint_unmodified = 1
let g:pymode_rope = 0
let g:pymode_folding = 0

" XML
let xml_use_xhtml = 1
let xml_tag_syntax_prefixes = 'html\|xml\|xsl\|section\|docbk'
    " Add 'section' so that the xml tag recognizes angular views
au FileType html,xml let b:delimitMate_matchpairs = "(:),[:],{:}"

:set hls is


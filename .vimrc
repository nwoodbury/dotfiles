:colorscheme slate

"==================================================
" Vundle
"==================================================

 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required!
 Bundle 'gmarik/vundle'

 " Coding
 Bundle 'scrooloose/syntastic'
 Bundle 'Raimondi/delimitMate'

 " python
 Bundle 'klen/python-mode'
 Bundle 'alfredodeza/pytest.vim'
 Bundle 'ivanov/vim-ipython'
 Bundle 'julienr/vimux-pyutils'
 " Bundle 'davidhalter/jedi-vim'
 Bundle 'michaeljsmith/vim-indent-object'

 " JavaScript
 Bundle 'jelera/vim-javascript-syntax'
 Bundle 'pangloss/vim-javascript'
 Bundle 'nathanaelkane/vim-indent-guides'
 Bundle 'Raimondi/delimitMate'

 " Custom Vundles
 Bundle 'https://github.com/scrooloose/nerdtree'
 Bundle 'https://github.com/kien/ctrlp.vim'

 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'

 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'

 " Themes
 Bundle 'Lokaltog/vim-distinguished'

 " non github repos
 " Bundle 'git://git.wincent.com/command-t.git'

 " git repos on your local machine (ie. when working on your own plugin)
 " Bundle 'file:///Users/gmarik/path/to/plugin'
 " ...


 filetype plugin indent on     " required!
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
let NERDTreeShowHidden = 0

" Python
let g:jedi#auto_vim_configuration = 0
set completeopt="menu"
let g:pymode_doc = 0
let g:pymode_run = 0
let g:pymode_lint = 0
let g:pymode_rop = 0
let g:pymode_folding = 0

" XML
let xml_use_xhtml = 1
let xml_tag_syntax_prefixes = 'html\|xml\|xsl\|section\|docbk'
    " Add 'section' so that the xml tag recognizes angular views
au FileType html,xml let b:delimitMate_matchpairs = "(:),[:],{:}"

:set hls is


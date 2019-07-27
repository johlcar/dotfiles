" Download vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install plugins
call plug#begin('~/.vim/plugged')

" color scheme
Plug 'morhetz/gruvbox'

" better statusline
Plug 'itchyny/lightline.vim'

" navigation/search file
Plug 'scrooloose/nerdtree'

" editing
Plug 'tpope/vim-surround'

" git
Plug 'airblade/vim-gitgutter'

call plug#end()

" Colors
set termguicolors       " use true color
let g:gruvbox_italic=1
colorscheme gruvbox     " set color scheme
syntax enable           " enable syntax processing
set background=dark

" Spaces and tabs
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line

" UI Config
set cursorline                  " highlight screen line of cursor
set number                      " show line numbers
set laststatus=2                " window always has status line
set showcmd                     " show command in last line of the screen
set showtabline=1               " show tab page labels when at least 2 tabs
set wildmenu                    " visual autocomplete for command menu
set wildmode=list:longest,full
set showmatch                   " highlight matching brace
set nobackup
set noswapfile
:match colorcolumn "\%80v."     " Highlight text in column 80  
highlight colorcolumn ctermbg=0 guibg=lightgrey

" Search
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
set ignorecase      " ignore case when searching
set smartcase       " ignore case if search pattern is lower case
" case-sensitive otherwise
nnoremap <esc><esc> :silent! nohls<cr>

" Leader and mappings
let mapleader = " "

" fast save and close
nmap <leader>w :w<CR>
nmap <leader>x :x<CR>
nmap <leader>q :q!<CR>

" fix indentation
nnoremap <leader>i mzgg=G`z<CR>

" buffer navigation
nnoremap <tab> :bn<CR>
nnoremap <s-tab> :bp<CR>
nnoremap <leader>bd :bd<CR>

" split navigation
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

" NERDTree mappings
map <C-n> :NERDTreeToggle<CR>

" Open new splits below or right
set splitbelow
set splitright

" NERDTree
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']

" lightline
set noshowmode      " hide default -- Insert -- message
let g:lightline = {
            \ 'colorscheme': 'gruvbox',
            \ 'component': {
            \   'lineinfo': ' %3l:%-2v',
            \ },
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'readonly', 'filename', 'modified' ] ]
            \ },
            \ 'component_function': {
            \   'readonly': 'LightlineReadonly'
            \ },
            \ }
function! LightlineReadonly()
    return &readonly ? '' : ''
endfunction

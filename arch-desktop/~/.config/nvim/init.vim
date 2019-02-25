" Plugin manager
call plug#begin('~/.local/share/nvim/plugged')

" File manager
Plug 'scrooloose/nerdtree',{'on':'NERDTreeToggle'}

" Status bar
Plug 'itchyny/lightline.vim'

" Fuzzy file searching
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

" enable syntax processing
syntax enable

" Spaces & Tabs 
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1
filetype indent on
filetype plugin on
set autoindent

" UI layout
set number              " show line numbers
set showmatch           " higlight matching parenthesis
set noshowmode		    " remove default status, lightline replaces
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

" Searching
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches

" Folding 
set foldenable          " enable folding
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldlevelstart=10   " start with fold level of 1

" Keybindings

" Map leader
nnoremap <SPACE> <nop>
let mapleader=" "

" Map B and E to begin/end of line
nnoremap B ^
nnoremap E $

nnoremap ^ <nop>
nnoremap $ <nop>

" Map <leader>+a to select all
map <Leader>a ggVG<Paste>

" Map leader for file i/o
nnoremap <leader>q :q!<cr>
nnoremap <leader>z :wq<cr>
nnoremap <leader>w :w<cr> 

" change buffer shortcut
nnoremap <leader>n :bnext<cr>
nnoremap <leader>N :bprev<cr>

" remap redo to U
nnoremap U <C-r>
nnoremap <C-r> <nop>

" Toggle between normal and relative numbering.
nnoremap <leader>r :call NumberToggle()<cr>

" use ; for commands
nnoremap ; :

" Open file menu (ctrlp plugin)
nnoremap <Leader>o :CtrlP<CR>

" Open buffer menu (ctrlp plugin)
nnoremap <Leader>b :CtrlPBuffer<CR>

" Open most recently used files (ctrlp plugin)
nnoremap <Leader>f :CtrlPMRUFiles<CR>

" Relative Numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Don't create backup.
set nowritebackup
set nobackup
set noswapfile
set backupdir-=.

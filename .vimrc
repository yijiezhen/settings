set nocompatible                " choose no compatibility with legacy vi
syntax on
"" color dracula
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
runtime macros/matchit.vim

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set shiftwidth=4 softtabstop=4 expandtab

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>


set pastetoggle=<f5>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l> 
execute pathogen#infect()

let mapleader = ',' 

let g:NERDTreeNodeDelimiter = "\u00a0"

map <F2> :NERDTreeToggle<CR>

set wildignore+=node_modules/**

set rtp+=/usr/local/opt/fzf
map <C-f> :FZF<CR>
map <C-x> :only<CR>

let FZF_DEFAULT_COMMAND='fd --type f'
let FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"


nnoremap <C-e> :buffers<CR>:buffer<Space>

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


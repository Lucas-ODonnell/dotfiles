" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Bundle 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails' 
Plugin 'tpope/vim-endwise'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'crusoexia/vim-monokai'
Plugin 'tomasr/molokai'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dense-analysis/ale'
Plugin 'vieira/vim-javascript'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'neoclide/coc.nvim'

call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

set nocompatible " We're running Vim, not Vi!
syntax on " Enable syntax highlighting
filetype on " Enable filetype detection
filetype indent on " Enable filetype-specific indenting
filetype plugin on " Enable filetype-specific plugins
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
endif

let g:NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

" Shift is two spaces
:set shiftwidth=2
:set autoindent
:set smartindent
:set tabstop=2
syntax on " Enable syntax highlighting
:set cursorline
colorscheme molokai
set termguicolors
filetype on " Enable filetype detection
filetype indent on " Enable filetype-specific indenting
filetype plugin on " Enable filetype-specific plugins
set number
" Window Navigation with Ctrl-[hjkl]
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

nmap <F2> :NERDTreeToggle<CR>

:set clipboard=unnamedplus
let g:rehash256 = 1
let g:loaded_matchparen=1

"For ALE"
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fixers = {
\  'javascript': ['eslint'],
\}

let g:ale_fix_on_save = 1

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


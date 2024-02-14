" Set the runtime path to include VIM runtime files
set runtimepath+=~/.vim_runtime

" Enable line numbers
set number

" Set the default tab size to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Highlight search results as you type
set incsearch
set hlsearch

" Enable syntax highlighting
syntax enable

" Show line and column numbers
set ruler

" Display matching parentheses
set showmatch

" Enable mouse support in all modes
set mouse=a

" Enable clipboard support
set clipboard=unnamedplus

" Enable auto-indentation
set smartindent
set autoindent
set smarttab

" Enable auto-completion in insert mode
set completeopt=menuone,noselect

" Enable line wrapping and display line continuation characters
set wrap
set showbreak=\ \

" Display matching parentheses and brackets
set matchpairs+=<:>

" Enable folding for code blocks
set foldmethod=indent
set foldlevel=99

" Highlight current line
set cursorline

" Enable incremental search and highlight
set incsearch
set hlsearch

" Highlight search results as you type
set incsearch

" Highlight yanked text
au TextYankPost * silent! lua vim.highlight.on_yank({ higroup = 'Search', timeout = 200 })

" Display status line with file type and line/col information
set laststatus=2
set statusline=%F%m%r%h%w\ [%L]\ [%{&ff}]\ [%p%%]

" Display file information in the title
set title

" Enable swap file to recover unsaved changes after a crash
set undofile

" Enable persistent undo history
set undodir=~/.vim/undodir
set undofile

" Automatically save and load session
set sessionoptions+=globals

" Use the 'ag' (Silver Searcher) tool for searching in the project
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let &grepformat='%f:%l:%c:%m,%f:%l:%m'
endif

" Map <Space> as leader key
let mapleader = "\<Space>"

" Enable quick navigation through buffers
nnoremap <Leader>n :bnext<CR>
nnoremap <Leader>p :bprev<CR>

" Enable quick saving with <Space>w
nnoremap <Leader>w :w<CR>

" Enable easy switching between split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Toggle line numbers with <Space>l
nnoremap <Leader>l :set number!<CR>

" Toggle paste mode with <Space>p
nnoremap <Leader>p :set paste!<CR>

" Enable auto-pairing of parentheses, brackets, and quotes
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap " ""<Left>

" Enable commenting lines with <Space>c
nnoremap <Leader>c :Commentary<CR>
vnoremap <Leader>c :Commentary<CR>

" Highlight trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Highlight long lines
highlight OverLength ctermbg=darkred guibg=darkred
match OverLength /\%81v.\+/

" Set the background color for long lines
au ColorScheme * hi OverLength ctermbg=darkred guibg=darkred

" Set the colorscheme to 'desert' (replace with your preferred colorscheme)
" colorscheme desert


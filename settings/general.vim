" set leader key
let g:mapleader = ","

syntax enable                           " Enables syntax highlighing
filetype plugin indent on               " Enables automatic indent
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as a single line
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file
set pumheight=10                        " Makes popup menu smaller
set ruler              			        " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
" set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 4 spaces for a tab
set softtabstop=4                       " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set backspace=indent,eol,start          " Fix backspace indent
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set number relativenumber               " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set termguicolors                       " Support True colors
set autoread                            " Autoload file changes
set incsearch                           " Start searching with pressing enter
au! BufWritePost $MYVIMRC source %      " Auto source when writing to init.vm

" Reopen a file in last visited line
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" TXT
augroup vimrc-wrapping
  autocmd!
  autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END

if !exists('*s:setupWrapping')
  function s:setupWrapping()
    set wrap
    set wm=2
    set textwidth=79
  endfunction
endif

" Remove trailing whitespaces
command! FixWhitespace :%s/\s\+$//e

" Custom Python interpreter
let g:python3_host_prog = expand("/usr/bin/python")

" You can't stop me
cmap w!! w !sudo tee %

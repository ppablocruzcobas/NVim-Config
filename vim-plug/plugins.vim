" Auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Change dates using Ctrl+A / Ctrl+X
  " Works with any number
  Plug 'tpope/vim-speeddating'
    
  " Integrate Tmux notifications
  Plug 'tmux-plugins/vim-tmux-focus-events'
  " Copy text from running Tmux sessions
  Plug 'wellle/tmux-complete.vim'

  " Seamlessly navigate between Tmux and Vim
  Plug 'christoomey/vim-tmux-navigator'

  " Files (move, rename,...)
  Plug 'tpope/vim-eunuch'

  " Repeat stuff (repeat last command using .)
  Plug 'tpope/vim-repeat'

  " Surround (changes surrounds around text using cs / delete with ds)
  Plug 'tpope/vim-surround'

  " Better Comments (gc / gcc / gcap...)
  Plug 'tpope/vim-commentary'

  " Have the file system follow you around
  " Make cd to project dir
  Plug 'airblade/vim-rooter'

  " Auto set indent settings
  Plug 'tpope/vim-sleuth'

  " Virtual text (produces evaluations in real time)
  Plug 'ChristianChiarulli/codi.vim'

  " Text Navigation
  Plug 'easymotion/vim-easymotion'
  
  " Add some color
  Plug 'luochen1990/rainbow'
  
  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'
  
  " Cool Icons
  Plug 'ryanoasis/vim-devicons'
  
  " Auto pairs for '(' '[' '{'... 
  Plug 'jiangmiao/auto-pairs'
  
  " Closetags
  Plug 'alvan/vim-closetag'
  
  " Theme
  Plug 'rafi/awesome-vim-colorschemes'

  " LaTeX integration
  Plug 'lervag/vimtex'

  " Intellisense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  
  " Status Line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  
  " Ranger
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
  
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Git
  " Lateral indicators
  Plug 'airblade/vim-gitgutter'
  " Git commands / Status line
  Plug 'tpope/vim-fugitive'
  " Hub
  Plug 'tpope/vim-rhubarb'
  " GBrowse
  Plug 'junegunn/gv.vim'
  
  " Add some colors
  Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

  " Terminal
  Plug 'voldikss/vim-floaterm'
  
  " Start Screen
  Plug 'mhinz/vim-startify'
  
  " Vista
  Plug 'liuchengxu/vista.vim'
  
  " See what keys do like in emacs
  Plug 'liuchengxu/vim-which-key'
  
  " Making stuff
  Plug 'neomake/neomake'
  
  " Snippets
  Plug 'honza/vim-snippets'
  Plug 'mattn/emmet-vim'
    
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

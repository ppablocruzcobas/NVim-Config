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

  " Files (move, rename,...)
  Plug 'tpope/vim-eunuch'

  " Repeat stuff (repeat last command using .)
  Plug 'tpope/vim-repeat'

  " Surround (changes surrounds around text using cs / delete with ds)
  Plug 'tpope/vim-surround'

  " Tag bar...
  Plug 'majutsushi/tagbar'

  " Better Comments (gc / gcc / gcap...)
  Plug 'tpope/vim-commentary'

  " DB conectors...
  Plug 'tpope/vim-dadbod'
  Plug 'kristijanhusak/vim-dadbod-ui'

  " Have the file system follow you around
  " Make cd to project dir
  Plug 'airblade/vim-rooter'

  " Auto set indent settings
  Plug 'tpope/vim-sleuth'

  " Run selected code (Pyhton, Java C/C++)
  " Plug 'michaelb/sniprun', {'do': 'bash install.sh'}

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

  " Vim Wiki
  Plug 'https://github.com/vimwiki/vimwiki.git'
  
  " Find and replace
  Plug 'ChristianChiarulli/far.vim'

  " Markdown preview
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

  " Move selected text
  Plug 'matze/vim-move'

  " Multiple selection
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}

  " LaTeX integration
  Plug 'lervag/vimtex'

  " A Vim Plugin for Lively Previewing LaTeX PDF Output
  Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

  " Cheat Sh Stackoverflow
  Plug 'dbeniamine/cheat.sh-vim'

  " (Do)cumentation (Ge)nerator
  Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }

  " Intellisense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
 
  " Themes
  Plug 'rafi/awesome-vim-colorschemes'

  " Debugger
  Plug 'joonty/vdebug'

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
  
  " Add some colors
  Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

  " Terminal
  Plug 'voldikss/vim-floaterm'
  
  " Start Screen
  Plug 'mhinz/vim-startify'
  
  " See what keys do like in emacs
  Plug 'liuchengxu/vim-which-key'
  
  " Making stuff
  Plug 'neomake/neomake'
  
  " Undo time travel
  Plug 'mbbill/undotree'

  " Snippets
  Plug 'honza/vim-snippets'
  Plug 'mattn/emmet-vim'
    
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

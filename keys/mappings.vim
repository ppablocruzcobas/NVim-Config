" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <C-M-j>    :resize -2<CR>
nnoremap <C-M-k>    :resize +2<CR>
nnoremap <C-M-h>    :vertical resize -2<CR>
nnoremap <C-M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" i3 integration
" nnoremap <silent> <C-l> :call Focus('right', 'l')<CR>
" nnoremap <silent> <C-h> :call Focus('left', 'h')<CR>
" nnoremap <silent> <C-k> :call Focus('up', 'k')<CR>
" nnoremap <silent> <C-j> :call Focus('down', 'j')<CR>

" nnoremap <silent> <C-Right> :call Focus('right', 'l')<CR>
" nnoremap <silent> <C-Left> :call Focus('left', 'h')<CR>
" nnoremap <silent> <C-Up> :call Focus('up', 'k')<CR>
" nnoremap <silent> <C-Down> :call Focus('down', 'j')<CR>

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" No one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

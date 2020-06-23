let mapleader = " "
let maplocalleader = "\\"

" emacs
inoremap <C-f> <Esc>la
inoremap <C-b> <Esc>ha
inoremap <C-p> <Esc>ka
inoremap <C-n> <Esc>ja
inoremap <C-e> <Esc>$a
inoremap <C-a> <Esc>I

" switching pane
nnoremap <silent> <Leader>h :wincmd h<CR>
nnoremap <silent> <Leader>j :wincmd j<CR>
nnoremap <silent> <Leader>k :wincmd k<CR>
nnoremap <silent> <Leader>l :wincmd l<CR>

" resizing pane
nnoremap <Leader>> :10winc ><CR>
nnoremap <Leader>< :10winc <<CR>

" Exit insert mode
inoremap jk <ESC>
inoremap <C-g> <Esc>
vnoremap <C-g> <Esc>

" buffers
nnoremap <Leader>n :bnext<CR>
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>b :bprev<CR>
nnoremap <Leader>0 :bfirst<CR>
nnoremap <Leader>bb :Buffers<CR>

" quick edit config
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" ?
noremap <C-a> :noh<Cr>
inoremap <C-u> <Esc>gUw
nnoremap <Leader>" viw<Esc>a"<Esc>bi"<Esc>lel
vnoremap <Leader>" <Esc>a"<Esc>`<i"<Esc>v`>
nnoremap <Leader>q :q<Cr>


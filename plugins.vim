call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
" Plug 'rust-lang/rust.vim'
" Plug 'dart-lang/dart-vim-plugin'
" Plug 'leafgarland/typescript-vim'
" Plug 'pangloss/vim-javascript'
" Plug 'maxmellon/vim-jsx-pretty'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
" Plug 'prettier/vim-prettier', {
"   \ 'do': 'yarn install',
"   \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
" Color schemes
Plug 'sts10/vim-pink-moon'
Plug 'dracula/vim',{'as': 'dracula'}
Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'arzg/vim-colors-xcode'

" UI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'
" Plug 'majutsushi/tagbar'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-colorsuccess'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'wincent/ferret'

" File explorer
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Whooshh
Plug 'easymotion/vim-easymotion'

" Version control
Plug 'tpope/vim-fugitive'
" Plug 'apzelos/blamer.nvim'

" autoclose
Plug 'alvan/vim-closetag'

call plug#end()


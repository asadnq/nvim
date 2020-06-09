" Specify a directory for plugins
call plug#begin()

" Semantic language support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntactic language support
" Plug 'rust-lang/rust.vim'
" Plug 'dart-lang/dart-vim-plugin'
" Plug 'leafgarland/typescript-vim'
" Plug 'pangloss/vim-javascript'
" Plug 'maxmellon/vim-jsx-pretty'
Plug 'sheerun/vim-polyglot'

"Snippet 
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

" formatting
" Plug 'prettier/vim-prettier', {
"   \ 'do': 'yarn install',
"   \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" Color
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

" smooth scroll
" Plug 'yuttie/comfortable-motion.vim'

" Version control
Plug 'tpope/vim-fugitive'
" Plug 'apzelos/blamer.nvim'

" autoclose
Plug 'alvan/vim-closetag'


call plug#end()

source ~/.config/nvim/autocmd.vim
" source ./autocmd.vim

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js, *.jsx, *.ts, *.tsx'

set conceallevel=3
set nowrap
set shiftwidth=4
set tabstop=4 softtabstop=4
set expandtab
" set smartindent
" set autoindent
set ignorecase
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set noerrorbells
set termguicolors
set encoding=UTF-8

let mapleader = " "
let maplocalleader = "\\"

" emacs lol
inoremap <c-f> <esc>la
inoremap <c-b> <esc>ha
inoremap <c-p> <esc>ka
inoremap <c-n> <esc>ja

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>> :10winc ><CR>
nnoremap <leader>< :10winc <<CR>
noremap - ddp
noremap _ ddkP
noremap <C-a> :noh<Cr>
inoremap <C-u> <ESC>gUw
inoremap <c-g> <esc>
nnoremap <C-g> <Esc>:noh<CR>
vnoremap <c-g> <Esc>:noh<CR>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
vnoremap <leader>" <esc>a"<esc>`<i"<esc>v`>
nnoremap <leader>q :q<cr>
nnoremap <Leader>bb :Buffers<CR>
 
" prettier
vnoremap <leader>f <Plug>(coc-format-selected)
nnoremap <leader>f <Plug>(coc-format-selected)

" Exit insert mode
inoremap jk <ESC>

" easymotion
" noremap <Leader>f <Plug>(easymotion-prefix)

" tagbar
nnoremap <Leader>T :TagbarToggle<CR>

" buffers
nnoremap <Leader>n :bnext<CR>
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>b :bprev<CR>
nnoremap <Leader>0 :bfirst<CR>

" quick edit config
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" iabbrev
iabbrev @@ asadalhaq@yandex.com

" fugitive
nnoremap <leader>gg :Git<CR>

" blamer
"let g:blamer_enabled = 1
"let g:blamer_delay = 1000

if has('python')
  set pyx=2
elseif has('python3')
  set pyx=3
endif

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensios#coc#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:coc_git_status = 1

" Color related
" let g:sierra_Twilight = 1
" let g:dracula_colorterm = 1
let g:airline_theme='gruvbox'

set background=dark
set nu
set rnu

colorscheme gruvbox
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_termcolors = 256
let g:gruvbox_hls_cursor = 'aqua'
set hlsearch
hi Search ctermbg=LightCyan ctermfg=White

" let g:xcodedark_green_comments = 1
syntax on
" font
set guifont=Victor\ Mono

" FZF
let g:fzf_layout = { 'down': '~20%' }
noremap <C-x> :FZF<CR>
noremap <Leader><C-F> :Rg<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

map <C-n> :NERDTreeToggle<CR>


let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Override tab from other plugins

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
" if exists('*complete_info')
"   inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
" else
"   inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" autocommand
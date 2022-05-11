set mouse=a 
set number
set numberwidth=1
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch 
set sw=2
set hidden
set updatetime=300
set relativenumber
nnoremap <SPACE> <Nop>
let mapleader=" "
nnoremap <Leader>o o<Esc>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
inoremap jk <esc>
xnoremap jk <esc>  

"Directory for plugins
call plug#begin('/Users/lerro/AppData/Local/nvim/plugged')

"Set up your plugins here
Plug 'romgrk/barbar.nvim'

"Vue Plugin
Plug 'leafOfTree/vim-vue-plugin'

"Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Theme
Plug 'morhetz/gruvbox'

"Tree
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

"Lightline
Plug 'itchyny/lightline.vim'

"git
Plug 'tpope/vim-fugitive'
Plug 'itchyny/vim-gitbranch'

call plug#end()

"Set up your color scheme here
colorscheme gruvbox

"Opens Tree
nnoremap <leader>m :NERDTreeToggle<CR>
"Tabs configuration
nnoremap <S-t> :BufferNext<CR>
nnoremap <S-Tab> :BufferPrevious<CR>
nnoremap <C-w> :BufferClose<CR>

"coc extensions
let g:coc_global_extensions = ['coc-git', 'coc-tsserver', 'coc-pairs']

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"coc-git lightline integration
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
   \ }

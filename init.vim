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
Plug 'neoclide/coc.vim', {'branch': 'release'}

"Theme
Plug 'morhetz/gruvbox'

"Tree
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

call plug#end()

"Set up your color scheme here
colorscheme gruvbox

"Opens Tree
nnoremap <leader>m :NERDTreeToggle<CR>
"Tabs configuration
nnoremap <Tab> :BufferNext<CR>
nnoremap <S-Tab> :BufferPrevious<CR>
nnoremap <C-w> :BufferClose<CR>

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree' " File tree explorer
Plug 'vim-airline/vim-airline' " Status line and buffer/tabline
Plug 'vim-airline/vim-airline-themes' " Themes for airline
Plug 'tpope/vim-fugitive' " Git integration
Plug 'ctrlpvim/ctrlp.vim' " Fuzzy file finder
Plug 'dense-analysis/ale' " Asynchronous Lint Engine
Plug 'Yggdroot/indentLine' " Display indentation guides
Plug 'sheerun/vim-polyglot' " Language pack for syntax highlighting
Plug 'rust-lang/rust.vim'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

" Enable syntax highlighting and enable all Vim-Plug plugins 
syntax enable
filetype plugin indent on

" nerdtree settings
let g:NERDTreeShowHidden = 1
let g:NERDTreeAutoCenter = 1
let g:NERDTreeAutoDeleteBuffer = 1
nnoremap <C-n> :NERDTreeToggle<CR>

" airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffers_label = 'Buffers '
let g:airline#extensions#tabline#show_buffers = 1
let g:airline_theme='deus'

" Fugitive settings
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gb :Gblame<CR>

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" ALE settings
let g:ale_linters_explicit = 1
let g:ale_linters = {
            \   'c': ['clang'],
            \}
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '>>'
let g:ale_set_highlights = 1
let g:ale_set_loclist = 1

" indentline settings
let g:indentLine_char = '|'
let g:indentLine_enabled = 1

" auto-indentation settings
set smartindent
set autoindent
set cindent
set tabstop=4
set shiftwidth=4
set expandtab

" line numbering settings
set number
set relativenumber

" search settings
set incsearch
set hlsearch

" mouse support
set mouse=a

" clipboard support
set clipboard=unnamedplus

" colors!
colorscheme dracula

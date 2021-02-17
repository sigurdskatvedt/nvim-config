source $HOME/.config/nvim/vim-plug/plugins.vim

let mapleader = " "
noremap ø l
noremap l k
noremap k j
noremap j h
    

" Using lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

set expandtab
set smartindent
set exrc
set nu
set nohlsearch
set hidden
set errorbells
set ignorecase
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir 
set incsearch
set scrolloff=8
set signcolumn=yes
colorscheme gruvbox


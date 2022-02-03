syntax enable
filetype plugin indent on
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/coc-settings.vim

let mapleader = " "
noremap ø l
noremap l k
noremap k j
noremap j h
    
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:rustfmt_autosave = 1

" Using lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Action context actions
nnoremap <silent> <Leader>s :call ActionMenuCodeActions()<CR>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
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
set undodir=~/.config/nvim/undodir 
set incsearch
set scrolloff=8
set relativenumber
set signcolumn=yes
colorscheme gruvbox

hi Normal guibg=none ctermbg=none
hi LineNr guibg=none ctermbg=none
hi Folded guibg=none ctermbg=none
hi NonText guibg=none ctermbg=none
hi SpecialKey guibg=none ctermbg=none
hi VertSplit guibg=none ctermbg=none
hi SignColumn guibg=none ctermbg=none
hi EndOfBuffer guibg=none ctermbg=none

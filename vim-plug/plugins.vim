" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'nvim-lua/popup.nvim' " Allows Vim-style popups
Plug 'nvim-lua/plenary.nvim' " Lua module for asynchronous programming using coroutines
Plug 'nvim-telescope/telescope.nvim' " Highly extendable fuzzy finder over lists
Plug 'gruvbox-community/gruvbox' " Designed as a bright theme with pastel 'retro groove' colors and light/dark mode switching in the way of solarized. 
Plug 'preservim/nerdtree' " The NERDTree is a file system explorer for the Vim editor.
" Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair.
Plug 'vim-utils/vim-man' " View man pages in vim. Grep for the man pages.
" Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'dense-analysis/ale' " ALE (Asynchronous Lint Engine) is a plugin providing linting (syntax checking and semantic errors) in NeoVim 0.2.0+ and Vim 8.0+ while you edit your text files, and acts as a Vim Language Server Protocol client.
" Plug 'neoclide/coc.nvim' " Nodejs extension host for vim & neovim, load extensions like VSCode and host language servers.
Plug 'mbbill/undotree' " Undotree visualizes the undo history and makes it easy to browse and switch between different undo branches.
" Plug 'airblade/vim-gitgutter' " A Vim plugin which shows a git diff in the sign column. It shows which lines have been added, modified, or removed.
" Plug 'tibabit/vim-templates' " Create files from predefined templates. Templates are files with .template extension.

Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' } " A vim plugin wrapper for prettier, pre-configured with custom default prettier settings. post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'ryanoasis/vim-devicons' " Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more
Plug 'scrooloose/NERDCommenter' " Vim plugin for intensely nerdy commenting powers
" Plug 'rust-lang/rust.vim' " This is a Vim plugin that provides Rust file detection, syntax highlighting, formatting, Syntastic integration, and more.
" Plug 'tikhomirov/vim-glsl' " Vim syntax highlighting for OpenGL Shading Language
Plug 'BurntSushi/ripgrep' " ripgrep recursively searches directories for a regex pattern while respecting your gitignore
Plug 'nvim-treesitter/nvim-treesitter' " Treesitter configurations and abstraction layer for Neovim.
Plug 'sharkdp/fd' " A simple, fast and user-friendly alternative to 'find'
" Plug 'kizza/actionmenu.nvim' " A nice context menu for vim
" Plug 'pantharshit00/vim-prisma' " This plugin provides file detection and syntax highlighting support for Prisma in Vim.
" Plug 'jparise/vim-graphql' " A Vim plugin that provides GraphQL file detection, syntax highlighting, and indentation.
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' } " FZF sorter for telescope written in c
" Plug 'pangloss/vim-javascript' " JavaScript bundle for vim, this bundle provides syntax highlighting and improved indentation.
" Plug 'mxw/vim-jsx' " React JSX syntax highlighting and indenting for vim.


call plug#end()

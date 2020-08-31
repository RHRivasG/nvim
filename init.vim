let mapleader =" "
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>

syntax on
set mouse=a
set clipboard=unnamedplus
set number relativenumber

call plug#begin()
	Plug 'preservim/nerdtree'
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'itchyny/lightline.vim'
	Plug 'sheerun/vim-polyglot'
	if has('nvim')
  		Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	else
  		Plug 'Shougo/deoplete.nvim'
  		Plug 'roxma/nvim-yarp'
  		Plug 'roxma/vim-hug-neovim-rpc'
	endif
	
	"Golang
	Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
call plug#end()

autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Use deoplete.
let g:python3_host_prog = 'C:/Python38/python.exe'
let g:deoplete#enable_at_startup = 1

"Load pathogen"
execute pathogen#infect()



"============== Filetype stuff ===============
filetype plugin indent on
"filetype indent on 


syntax enable
colorscheme solarized

"============== Parameters ===================

set nu 							"Display line number"
"set relativenumber 	"Relative number on" 
set showmatch 			"Show matching bracket"
set autowrite 			"Automatically save before commands like :next and :make
set wrap						"wrap text" 
set encoding=utf-8	"Set encoding"
set hlsearch				"hightlight matching patern"
set tabstop=2      	"Tabs lenght"
set mouse=a					"Enable mouse (all mode)"
set ignorecase 			"Do case insensitive mathcing"
set smartcase 			"Try to do smart case"
set paste 					"Set ctrl-c"

"============== Key remap ====================
"To cancel de highlight"
"nnoremap <esc> :noh<return><esc>
"nnoremap <CR> :let @/ = ""<return><esc> "Bug: Execute the command when open window"
let mapleader = ","
"let mapleader = "\<space>"
nnoremap <leader>b :NERDTreeToggle<return><esc>


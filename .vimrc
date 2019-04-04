"##########################################################"
"################## Parameters ############################"
"##########################################################"
syntax on
set nu 							"Display line number"
set relativenumber 	"Relative number on" 
set showmatch 			"Show matching bracket"
set autowrite 			"Automatically save before commands like :next and :make
set wrap						"wrap text" 
set encoding=utf-8	"Set encoding"
set hlsearch				"hightlight matching patern"
set tabstop=2      	"Tabs lenght"
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set mouse=a					"Enable mouse (all mode)"
set ignorecase 			"Do case insensitive mathcing"
set smartcase 			"Try to do smart case"
set paste 					"Set ctrl-c"

"Change the cursor in Insertion mode"
"It different setting if tmux"
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

"Load pathogen"
execute pathogen#infect()


"============== Filetype stuff ===============
filetype plugin indent on
"filetype indent on 


syntax enable
if has('unixmac')
	colorscheme solarized
endif

" Need powerline font: https://github.com/powerline/fonts.git"
"Airline configuration"
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1"
let g:airline#extensions#tmuxline#enabled = 1
"============== Parameters ===================
"Display line number"
set nu 							

"Set relative number"
" set relativenumber 

"Dont show the mode (insert, normal,..)
set noshowmode

"Show matching bracket"
set showmatch 		

"Automatically save before commands like :next and :make"
set autowrite 			

"Enable wraping text"
set wrap						

"Set encoding"
set encoding=utf-8

"Highlight matching patern"
set hlsearch				

"Search as I type character"
set incsearch

"Tabs are at proper location"
set tabstop=4

"Indent is 4 space"
set shiftwidth=4

"Set the tabs to act like normal
set autoindent
set smartindent
set smarttab
set expandtab
set cindent

"Enable mouse (all mode)"
" set mouse=a		

"Do case insensitive mathching"
set ignorecase 			

"Try to do smart case"
set smartcase 			

"Enable ctrl-c in insert mode"
set paste 				


"Set backspace to act like normal"
set backspace=indent,eol,start

"Set autocomplete to scan file and included file"
set complete-=i

"Enable clipboard register to copy/paste from other program"
"Need vim with +clipboard option" 
" set clipboard=unnamed,unnamedplus

"============== Key remap ====================
let mapleader = ","
"let mapleader = "\<space>"

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent><C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endi

nnoremap <silent><leader>b :NERDTreeToggle<return><esc>
vmap <C-c> "+y



"TODO: Copy/paste from external -> add +clipboard
"TODO: Add some remap
"TODO: Set up tmux workflow
"TODO: Split .vimrc into keymaps file and parameter file.. then source it
"TODO: Set up Nvim-R -> set up R workflow in vim
"TODO: Bash file to autocompite Latex,Markdown,Sweave
"TODO: Intall mupdf


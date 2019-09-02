"============== General Settings ===============

"Display line number"
set nu 							

"Set relative number"
" set relativenumber 


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
set mouse=a		

"Do case insensitive mathching"
set ignorecase 			

"Try to do smart case"
set smartcase 			

"Set backspace to act like normal"
set backspace=indent,eol,start

"Set autocomplete to scan file and included file"
set complete-=i

"Enable clipboard register to copy/paste from other program"
"Need vim with +clipboard option" 
" set clipboard=unnamed,unnamedplus

"Vim don't try to emulate the old vim
set nocompatible

"Display end of line"
" set list listchars=eol:¬

"Dont show the mode (insert, normal,..)
set noshowmode



"============== Buftabline Settings ===============

"Only show tabs when their more then one"
let g:buftabline_show = 1

"============== Airline Settings ===============
" Need powerline font: https://github.com/powerline/fonts.git"
"Airline configuration"
" let g:airline#extensions#tabline#enabled = 1"
"let g:airline#extensions#branch#enabled = 1"

" let g:airline_theme='solarized'
" let g:airline_solarized_bg='dark'
" let g:airline_powerline_fonts = 1

" let g:airline_section_b = airline#section#create(['branch'])
" let g:airline_section_x = airline#section#create(['hunks'])
" let g:airline_section_y = '%y'

"============== Nvim-R Settings ===============
let R_tmux_split = 1
let R_vsplit = 1
let R_assign = 0

"============== lightline Settings ===============
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

"============== gitgutter Settings ===============
set updatetime=100
let g:gitgutter_enabled = 0
noremap <silent><leader>G :GitGutterToggle<CR>
noremap <silent><leader>Gi :GitGutterToggle<CR>:GitGutterLineHighlightsToggle<CR>

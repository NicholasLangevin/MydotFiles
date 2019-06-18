execute pathogen#infect()
"Load pathogen"


"============== Filetype stuff ===============
filetype plugin indent on
"filetype indent on 


syntax enable
if has('unix')
	colorscheme solarized
endif
  
" Need powerline font: https://github.com/powerline/fonts.git"
"Airline configuration"
" let g:airline#extensions#tabline#enabled = 1"
"let g:airline#extensions#branch#enabled = 1"
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1
" let g:airline_section_b = airline#section#create(['branch'])
" let g:airline_section_x = airline#section#create(['hunks'])
" let g:airline_section_y = '%y'

"Nvim-R configuration"
let R_tmux_split = 1
let R_vsplit = 1
let R_assign = 0
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

"============== Key remap ====================
let mapleader = ","
"let mapleader = "\<space>"

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent><C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endi

"Changing tabs"
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

"Mapping for NERDTree"
" let NERDTreeQuitOnOpen = 1
nnoremap <silent><leader>b :NERDTreeToggle<CR>
nnoremap <leader>f  <C-w>w

"Add keys to copy-paste from external"
if has('clipboard') 
	vmap <C-y> "*y
	nmap <C-p> "*p
	nmap <C-P> "*P
endif

"Disable keys"
no <Right> <Nop>
no <Left> <Nop>
no <up> ddkP 
no <down> ddp

"Add auto center"
no <C-d> <C-d>zz
no <C-u> <C-u>zz

"Add line without go in insert mode"
nnoremap = o<esc>
nnoremap + O<esc> 

"Replace inner word with copy word"
nnoremap riw ciw<esc>"0p

function CompileFile()
    write
    "Set this variable to compile as different name"
    if exists("g:compileName")
        execute "!~/MydotFiles/InfinyCompiler.sh % -n" g:compileName
    else
        !~/MydotFiles/InfinyCompiler.sh % 
    endif
endfunction

nnoremap <leader>c :call CompileFile()<CR>

"Only show tabs when their more then one"
let g:buftabline_show = 1

"Change tabs"
nmap <leader>1 <Plug>BufTabLine.Go(1)
nmap <leader>2 <Plug>BufTabLine.Go(2)
nmap <leader>3 <Plug>BufTabLine.Go(3)
nmap <leader>4 <Plug>BufTabLine.Go(4)
nmap <leader>5 <Plug>BufTabLine.Go(5)
nmap <leader>6 <Plug>BufTabLine.Go(6)
nmap <leader>7 <Plug>BufTabLine.Go(7)
nmap <leader>8 <Plug>BufTabLine.Go(8)
nmap <leader>9 <Plug>BufTabLine.Go(9)
nmap <leader>0 <Plug>BufTabLine.Go(10)

"Save cursor position to jump back" 
function SavePos()
    let g:row =  line(".")
    let g:col  =  col(".")
endfunction

nnoremap <leader>s :call SavePos()<CR>
nnoremap <leader>d :call cursor(g:row, g:col)<CR>zz 


"============== Custom Mappings ===============

"Set leader
let mapleader = ","
"let mapleader = "\<space>"

" Unmap the arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent><C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endi

"Add keys to copy-paste from external"
if has('clipboard') 
	vmap <C-y> "*y
	nmap <C-p> "*p
	nmap <C-P> "*P
endif

"Add line without go in insert mode"
nnoremap = o<esc>
nnoremap + Ok<esc> 

"Replace inner word with copy word"
nnoremap riw ciw<esc>"0p

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

"Changing tabs"
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

"Close current tab"
nnoremap <leader>x :bd<CR>

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <C-j> mz:m+<cr>`z
nmap <C-k> mz:m-2<cr>`z
vmap <C-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <C-k> :m'<-2<cr>`>my`<mzgv`yo`z

"============== functions Mappings ===============

"Compile/run the file depending on the filetype
nnoremap <leader>c :call CompileFile()<CR>

"Save cursor position and move to that position later
nnoremap <leader>s :call SavePos()<CR>
nnoremap <leader>d :call cursor(g:row, g:col)<CR>zz 

"Enable/Desable spell check
nnoremap <leader>z :call SpellCheck()<CR>

"============== NERDTree Mappings ===============
" let NERDTreeQuitOnOpen = 1
" let NERDTreeShowHidden=1

"Open and close the files tree
nnoremap <silent><leader>b :NERDTreeToggle<CR>

"Focus in/out the files tree
nnoremap <leader>f  <C-w>w

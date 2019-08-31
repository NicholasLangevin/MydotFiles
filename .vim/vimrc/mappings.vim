"============== custom mappings ===============

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

"Use <C-L> to clear the highlighting of :set hlsearch.
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

"Replace motion: delete and yank the last copy
nnoremap riw ciw<esc>"0p
vnoremap r c<esc>"0p

"Change tabs"
nnoremap <leader>1 <Plug>BufTabLine.Go(1)
nnoremap <leader>2 <Plug>BufTabLine.Go(2)
nnoremap <leader>3 <Plug>BufTabLine.Go(3)
nnoremap <leader>4 <Plug>BufTabLine.Go(4)
nnoremap <leader>5 <Plug>BufTabLine.Go(5)
nnoremap <leader>6 <Plug>BufTabLine.Go(6)
nnoremap <leader>7 <Plug>BufTabLine.Go(7)
nnoremap <leader>8 <Plug>BufTabLine.Go(8)
nnoremap <leader>9 <Plug>BufTabLine.Go(9)
nnoremap <leader>0 <Plug>BufTabLine.Go(10)

"Changing tabs"
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

"Close current tab"
nnoremap <silent><leader>x :bd<CR>

"Split new window
" nnoremap <expr> <C-w>- ":split " .  input("File: ") . "<CR>"
" nnoremap <C-w>| :vsplit getchar() 

" Move a line of text using ALT+[jk] or Command+[jk] on mac
" nmap <C-j> mz:m+<cr>`z
" nmap <C-k> mz:m-2<cr>`z
vnoremap <C-j> :m'>+<cr>`<my`>mzgv`yo`z
vnoremap <C-k> :m'<-2<cr>`>my`<mzgv`yo`z

"Enable/Disable spell check
nnoremap <leader>z :setlocal spell!<cr>

"Move cursor without exit insert mode
inoremap <C-h> <esc>i
inoremap <C-j> <esc>ja
inoremap <C-k> <esc>ka
inoremap <C-l> <esc>la

"Center without exit insert mode 
inoremap <C-z><C-z>  <esc>zza

"quick pairs 
inoremap <leader>' ''<ESC>i
inoremap <leader>" ""<ESC>i
inoremap <leader>( ()<ESC>i
inoremap <leader>[ []<ESC>i
inoremap <leader>{ {}<ESC>i
" inoremap <silent>{<CR> {<ESC>b :call SavePos()<CR>o<ESC>ia}<ESC>hx g:col . is<ESC>

"Copy dotfile to HOME and reload vimrc. Bug: hightlight when reaload..
nnoremap <silent><leader>r :call CompileFile()<CR>:source $MYVIMRC<CR>:echo "vimrc reloaded"<CR>:nohl<CR>


"============== functions Mappings ===============

"Compile/run the file depending on the filetype
nnoremap <leader>c :call CompileFile()<CR>


"============== NERDTree Mappings ===============
" let NERDTreeQuitOnOpen = 1
" let NERDTreeShowHidden=1

"Open and close the files tree
nnoremap <silent><leader>b :NERDTreeToggle<CR>

"Focus in/out the files tree
nnoremap <leader>f  <C-w>w

"============== Vimux Mappings ===============

" Open tmux pane used by vimux
nnoremap <leader>np :call VimuxOpenRunner()<CR>
" Close tmux pane used by vimux 
noremap <leader>cp :call VimuxCloseRunner()<CR> 

nnoremap <leader>d :call VimuxCurrentSelection("n")<CR>
vnoremap <leader>d :call VimuxCurrentSelection("v")<CR>

" noremap <leader>d :call VimuxCurrentSelection("n")<CR>


map <Leader>vp :VimuxPromptCommand<CR>

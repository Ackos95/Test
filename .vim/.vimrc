syntax enable
highlight Normal ctermbg=darkgrey
set number

" TAB key settings
" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab 

" always uses spaces instead of tab characters
set expandtab
" END of TAB key settings


" VUNDLE - Plug-in settings
" set the runtime path to include Vundle and initialize
set nocompatible        " be improved, required
filetype off            " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage Vundele, required
Plugin 'VundleVim/Vundle.vim'

" plugins
Plugin 'file:///root/.vim/bundle/nerdtree/'

call vundle#end()           " required
filetype plugin indent on   " requried
" END of VUNDLE - Plug-in block


" MAPPING
" Mappings for tabs and Nerdtree
nnoremap <C-k> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-w> :tabclose<CR>
inoremap <C-j> <Esc>:tabprevious<CR>i
inoremap <C-k> <Esc>:tabnext<CR>i
inoremap <C-t> <Esc>:tabnew<CR>
inoremap <C-w> <Esc>:tabclose<CR>
nmap <leader>t :NERDTreeToggle<CR>

" unmapping arrow keys
nmap <UP> ddkP
nmap <DOWN> ddp
nmap <LEFT> <NOP>
nmap <RIGHT> <NOP>

imap <UP> <NOP>
imap <DOWN> <NOP>
imap <LEFT> <NOP>
imap <RIGHT> <NOP>

vmap <UP> <NOP>
vmap <DOWN> <NOP>
vmap <LEFT> <NOP>
vmap <RIGHT> <NOP>

" inserting new empty row
nmap <C-i>n o<ESC>
nmap <C-i>N O<ESC>

imap <C-e><C-e> <ESC>

nnoremap <leader>cpl :iabbr ( ()<ESC>i
" END of MAPPING

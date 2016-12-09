set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

" The bundles you install will be listed here

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
Plugin 'ekalinin/Dockerfile.vim'

call vundle#end()
filetype plugin indent on

" indentLine set up
let g:indentLine_color_term = 235
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)
let g:indentLine_char = '¦'
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_leadingSpaceEnabled = 1

" powerline related setup
set t_Co=256
let g:Powerline_symbols = "fancy"

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set encoding=utf-8
set laststatus=2
set number
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" The rest of your config follows here

autocmd BufRead,BufWritePre *.sh setl ts=4 sts=4 sw=4 expandtab autoindent
autocmd FileType yaml setl ts=2 sts=2 sw=2 expandtab smartindent

augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python setl ts=4 sts=4 sw=4 expandtab autoindent
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python setl nowrap
augroup END

" Highlight current line

augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>

let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

:nmap <C-s> :w!<cr>
:imap <C-s> <esc>:w!<cr>


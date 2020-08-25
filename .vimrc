if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
Plug 'itchyny/lightline.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/vim-gitbranch'
call plug#end()

set backupcopy=yes

set number
set laststatus=2
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set background=dark
colorscheme solarized

" Show lightline.vim bar
let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'filename', 'gitbranch', 'modified', ] ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'fileformat', 'fileencoding', 'filetype', ] ]
    \ },
    \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
    \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
    \ 'component': {
    \ },
    \ 'component_function': {
    \   'gitbranch': 'gitbranch#name',
    \   'fileencoding': 'LightlineFileEncoding',
    \   'filename': 'LightlineFileName',
    \   'fileformat': 'LightlineFileFormat',
    \ },
    \ }

filetype plugin indent on
syntax on

function! LightlineFileName()
  let filename = expand('%:t') !=# '' ? fnamemodify(expand("%"), ":~:.") : ''
  return filename
endfunction

function! LightlineFileEncoding()
  " only show the file encoding if it's not 'utf-8'
  let encoding = &fileencoding == 'utf-8' ? '' : &fileencoding
  return encoding
endfunction

function! LightlineFileFormat()
  " only show the file format if it's not 'unix'
  let format = &fileformat == 'unix' ? '' : &fileformat
  return format
endfunction

let java_highlight_all=1

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=C:\Users\YuuTo\.cache\dein\repos\github.com\Shougo\dein.vim

" Required:
call dein#begin('C:\Users\YuuTo\.cache\dein')

" Let dein manage dein
" Required:
call dein#add('C:\Users\YuuTo\.cache\dein\repos\github.com\Shougo\dein.vim')

" Add or remove your plugins here like this:
"call dein#add('thinca/vim-quickrun')
"call dein#add('Shougo/neosnippet-snippets')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END

" 矢印キーを無効にする
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Right> <Nop>
noremap <Left> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Right> <Nop>
inoremap <Left> <Nop>

set backspace=2

set encoding=UTF-8

set fileencodings=UTF-8,CP932

scriptencoding utf-8

set nobackup

set noswapfile

set noundofile

set autoread

set hidden

set showcmd

set wildmode=list:longest

set number

hi Constant ctermfg=14

hi clear CursorLine

set cursorline

set virtualedit=onemore

set visualbell

set showmatch

set ignorecase

set list listchars=tab:\▸\-


hi User1 cterm=bold ctermbg=9 ctermfg=15
hi User2 cterm=bold ctermbg=21 ctermfg=15
hi User3 cterm=bold ctermbg=166 ctermfg=15
hi User4 cterm=bold ctermbg=10 ctermfg=15

function! SetStatusLine()
  if mode() =~ 'i'
    let c = 1
    let mode_name = 'Insert'
  elseif mode() =~ 'n'
    let c = 2
    let mode_name = 'Normal'
  elseif mode() =~ 'R'
    let c = 3
    let mode_name = 'Replace'
  else
    let c = 4
    let mode_name = 'Visual'
  endif
  return '%' . c . '*[' . mode_name . ']%* %t%m%h%r%w %=[FMT=%{&ff}][CODE=0x%02B][ENC=%{&fileencoding}][ROW=%l/%L][COL=%c])'
endfunction
 
set statusline=%!SetStatusLine()

set laststatus=2

set expandtab

set tabstop=4

set shiftwidth=4

set softtabstop=4




set title

set incsearch

set wrapscan

set hlsearch

set smartindent

set laststatus=2

set cmdheight=2

set showcmd

set wildmenu

" nmap  :nohlsearch

syntax on
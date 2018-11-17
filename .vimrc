" general stuff
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
" set guifont=consolas:h12
set guifont=Inconsolata_NF:h11
syntax on
filetype plugin on
set path+=**
" set path=.\**

set tabstop=4
set shiftwidth=4
set expandtab


autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2

" let $PATH = 'C:/Python+/64bit/envs/adhoc/;C:/Python+/64bit/envs/adhoc/Lib;C:/Python+/64bit/envs/adhoc/Lib/site-packaes/;' . $PATH
" let $PYTHONPATH = 'c:/Python+/64bit/envs/adhoc/;C:/Python+/64bit/envs/adhoc/DLLs;C:/Python+/64bit/envs/adhoc/Lib;C:/Python+/64bit/envs/adhoc/Lib/site-packages/'

" jsx
let g:jsx_ext_required = 0
let g:mta_filetypes = {
    \ 'javascript.jsx': 1,
    \}

let g:user_emmet_key='<Tab>'
let g:user_emmet_settings = {
    \ 'javascript.jsx' : {
    \     'extends' : 'jsx',
    \ },
    \}

" let g:UltiSnipsExpandTrigger="<c-l>"

autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %

" map

map <C-n> :NERDTreeToggle<CR>
map <C-/> :Commentary
inoremap <C-/> :Commentary
nnoremap <C-/> :Commentary

" insert mode mappings
imap jj <Esc>
imap Jj <Esc>
imap jJ <Esc>
imap JJ <Esc>


" normal mode mappings
nnoremap ` '
nnoremap ' `
noremap Q @@
nnoremap <silent> <C-S> :<C-u>Update<CR>

" normal mode mappings
" leader keys
let mapleader = " "
nnoremap <leader>n :b#<cr>
nnoremap <leader>s :sp<cr>
nnoremap <leader>v :vsp<cr>
nnoremap <leader>c gcc
nnoremap <D-A-LEFT> <C-W>h
nnoremap <D-A-DOWN> <C-W>j
nnoremap <D-A-UP> <C-W>k
nnoremap <D-A-RIGHT> <C-W>l
nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
nnoremap <leader>L :vsp<cr>
nnoremap <leader>H :sp<cr>
nnoremap <silent> <leader>z :Goyo<cr>
nnoremap <silent><leader>o :CtrlSpace O<CR>
map <silent> <leader><cr> :noh<cr>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Function Keys
map <F6> :setlocal spell! spelllang=en_us<CR>
nnoremap <F5> :buffers<CR>:buffer<Space>

" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
" command -nargs=0 -bar Update if &modified 
"                            \|    if empty(bufname('%'))
"                            \|        browse confirm write
"                            \|    else
"                            \|        confirm write
"                            \|    endif
"                            \|endif

inoremap <C-s> <Esc>:Update<CR>
" inoremap <Tab> <C-n>

" set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrl_map   = '<c-p>'
let g:ctrl_cmd   = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules|git'

let g:ale_linters = {'javascript': ['eslint']}

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

" map <C-p> :CtrlSpace O<CR>
set encoding=utf-8


" set Line Numbers
:set number relativenumber
" :set LineNr ctermfg=65
" :set CursorLineNr ctermfg=109
:highlight LineNr ctermfg=5

"
" A (not so) minimal vimrc.
"

" You want Vim, not vi. When Vim finds a vimrc, 'nocompatible' is set anyway.
" We set it explicitely to make our position clear!
set nocompatible
filetype off

filetype plugin indent on  " Load plugins according to detected filetype.
syntax on                  " Enable syntax highlighting.

set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop =4         " Tab key indents by 4 spaces.
set shiftwidth  =4         " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.

set backspace   =indent,eol,start  " Make backspace work as you would expect.
set hidden                 " Switch between buffers without having to save first.
set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much as possible of the last line.

set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.

set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.

set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.

set list                   " Show non-printable characters.
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:? ,extends:?,precedes:?,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

" The fish shell is not very compatible to other shells and unexpectedly
" breaks things that use 'shell'.
if &shell =~# 'fish$'
  set shell=/bin/bash
endif

set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin('$HOME/.vim/bundle/')

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>


" Plugin 'VundleVim/Vundle.vim'
" Plugin 'maralla/completor.vim'
Plugin 'cjrh/vim-conda'
" Plugin 'ambv/black'
Plugin 'joshdick/onedark.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'flazz/vim-colorschemes'
Plugin 'tomasr/molokai'
" Plugin 'wincent/command-t'
Plugin 'tpope/vim-fugitive'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'valloric/youcompleteme'
" Plugin 'scrooloose/syntastic' 
Plugin 'w0rp/ale'
" Plugin 'bling/vim-airline'
" Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-markdown'
" Plugin 'plasticboy/vim-markdown'
" Plugin 'suan/vim-instant-markdown'
Plugin 'shime/livedown'
Plugin 'othree/html5.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-commentary'
Plugin 'digitaltoad/vim-pug'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
" Plugin 'mhinz/vim-startify'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-vinegar'
Plugin 'amix/vim-zenroom2'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'vim-ctrlspace/vim-ctrlspace'
Plugin 'skywind3000/asyncrun.vim'

" Plugin 'bling/vim-airline'
Plugin 'itchyny/lightline.vim'
Plugin 'mileszs/ack.vim'
Plugin 'michalliu/sourcebeautify.vim'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'justinmk/vim-sneak'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'prettier/vim-prettier'
Plugin 'valloric/matchtagalways'
Plugin 'SirVer/ultisnips'
Plugin 'epilande/vim-react-snippets'
Plugin 'epilande/vim-es2015-snippets'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
" Plugin 'airblade/vim-gitgutter'
Plugin 'wellle/targets.vim'
" Plugin 'dbext.vim'
Plugin 'tpope/vim-dadbod'
Plugin 'malithsen/trello-vim'

" " AG --> Ack
" let g:ackprg = 'ag --vimgrep --smart-case'

" cnoreabbrev ag ACK
" cnoreabbrev aG ACK
" cnoreabbrev Ag ACK
" cnoreabbrev AG ACK

" if executable("ag")
"     let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""' 
" endif

let g:airline_powerline_fonts=1

call vundle#end()            " required
filetype plugin indent on    " required

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Markdown Settings
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'sql', 'pug']
let g:markdown_minlines = 100
let g:instant_markdown_autostart = 0

" On The Fly Table mode
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'

colors onedark


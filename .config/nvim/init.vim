" set runtimepath+=~/.vim,~/.vim/after
" set packpath+=~/.vim
" source ~/.vimrc

" let g:python_host_prog = '/home/walkews/miniconda3/envs/neovim2/bin/python'
" let g:python3_host_prog = '/home/walkews/miniconda3/bin/python'
"
" general stuff

set shortmess=I
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
let g:closetag_filenames = "*html,*.xhtml,*.phtml,*.php,*.js,*.jsx"
let g:prettier#config#parser = 'babylon'
let g:user_emmet_key='<Tab>'
let g:user_emmet_settings = {
    \ 'javascript.jsx' : {
    \     'extends' : 'jsx',
    \ },
    \}

" let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsExpandTrigger="<c-l>"

" let g:syntastic_javascript_checkers = ['eslint']

" autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %
" autocmd BufWritePre *.js execute ':! eslint --fix %'
autocmd BufWritePre *.py execute ':Black'

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
nnoremap <leader><leader>p :!prettier % --write L<cr>
nnoremap <leader>f :Black<cr>
nnoremap <leader>t :Files<cr>
nnoremap <leader>r :Tags<cr>
nnoremap <cr> :Buffers<cr>
nnoremap <leader>n :b#<cr>
nnoremap <leader>s :sp<cr>
nnoremap <leader>v :vsp<cr>
nnoremap <leader>c :Commentary<cr>
nnoremap <D-A-LEFT> <C-W>h
nnoremap <D-A-DOWN> <C-W>j
nnoremap <D-A-UP> <C-W>k
nnoremap <D-A-RIGHT> <C-W>l
nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
nnoremap <leader>H :vsp<cr><c-w>h
nnoremap <leader>J :sp<cr>
nnoremap <leader>K :sp<cr><c-w>k
nnoremap <leader>L :vsp<cr>
nnoremap <silent> <leader>z :Goyo<cr>
nnoremap <silent> <leader><leader>l :Limelight!!<cr>
nnoremap <silent><leader>o :CtrlSpace O<CR>
map <silent> <leader><cr> :noh<cr>

nnoremap <silent><leader>gd :Gdiff<cr>
nnoremap <silent><leader>gs :Gstatus<cr>
nnoremap <silent><leader>gc :Gcommit<cr>


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
let g:ale_fixers = {'javascript': ['eslint']}

" autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

" map <C-p> :CtrlSpace O<CR>
set encoding=utf-8


" set Line Numbers
:set number relativenumber
" :set LineNr ctermfg=65
" :set CursorLineNr ctermfg=109
" :highlight LineNr ctermfg=5
hi clear LineNr


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

" set rtp+=$HOME/.vim/bundle/Vundle.vim
" call vundle#begin('$HOME/.vim/bundle/')

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

call plug#begin('~/.local/share/nvim/plugged')



" Plug 'VundleVim/Vundle.vim'
" Plug 'airblade/vim-gitgutter'
" Plug 'bling/vim-airline'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'dbext.vim'
" Plug 'easymotion/vim-easymotion'
" Plug 'flazz/vim-colorschemes'
" Plug 'josudoey/vim-eslint-fix'
" Plug 'maksimr/vim-jsbeautify'
" Plug 'malithsen/trello-vim'
" Plug 'maralla/completor.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf', { 'do': 'yes \| ./install'  }
Plug 'junegunn/fzf.vim'
Plug 'valloric/youcompleteme', {'do': './install.py'}
Plug 'scrooloose/syntastic' 
Plug 'w0rp/ale'
" Plug 'bling/vim-airline'
" Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-markdown'
" Plug 'plasticboy/vim-markdown'
" Plug 'suan/vim-instant-markdown'
Plug 'shime/livedown'
Plug 'othree/html5.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'digitaltoad/vim-pug'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
" Plug 'mhinz/vim-startify'
Plug 'terryma/vim-smooth-scroll'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-vinegar'
Plug 'amix/vim-zenroom2'
Plug 'michaeljsmith/vim-indent-object'
Plug 'jlanzarotta/bufexplorer'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'skywind3000/asyncrun.vim'

" Plug 'bling/vim-airline'
Plug 'itchyny/lightline.vim'
Plug 'mileszs/ack.vim'
Plug 'michalliu/sourcebeautify.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'justinmk/vim-sneak'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx', {'for': 'javascript'}
Plug 'prettier/vim-prettier'
Plug 'valloric/matchtagalways'
Plug 'SirVer/ultisnips'
Plug 'epilande/vim-react-snippets', {'for': 'javascript'}
Plug 'epilande/vim-es2015-snippets', {'for': 'javascript'}
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
" Plug 'airblade/vim-gitgutter'
Plug 'wellle/targets.vim'
" Plug 'dbext.vim'
Plug 'tpope/vim-dadbod'
Plug 'malithsen/trello-vim'

call plug#end()

" " AG --> Ack
let g:ackprg = 'ag --vimgrep --smart-case'

" cnoreabbrev ag ACK
" cnoreabbrev aG ACK
" cnoreabbrev Ag ACK
" cnoreabbrev AG ACK

" if executable("ag")
"     let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""' 
" endif

let g:airline_powerline_fonts=1

" call vundle#end()            " required
filetype plugin indent on    " required

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Markdown Settings
" autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'sql', 'pug']
" let g:markdown_minlines = 100
" let g:instant_markdown_autostart = 0

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


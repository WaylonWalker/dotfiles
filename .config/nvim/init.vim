" set runtimepath+=~/.vim,~/.vim/after
" set packpath+=~/.vim
" source ~/.vimrc

" let g:python_host_prog = '/home/walkews/miniconda3/envs/neovim2/bin/python'
" let g:python3_host_prog = '/home/walkews/miniconda3/bin/python'
"
let g:python_lint_config = '~/pylint.rc'
" general stuff

set autoread
au CursorHold * checktime
set shortmess=I
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guifont=Inconsolata_NF:h11
syntax on
filetype plugin on
set path+=**
" set path=.\**

set tabstop=4
set shiftwidth=4
set expandtab

set noswapfile

set fillchars+=vert:\│

autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2



" let $PATH = 'C:/Python+/64bit/envs/adhoc/;C:/Python+/64bit/envs/adhoc/Lib;C:/Python+/64bit/envs/adhoc/Lib/site-packaes/;' . $PATH
" let $PYTHONPATH = 'c:/Python+/64bit/envs/adhoc/;C:/Python+/64bit/envs/adhoc/DLLs;C:/Python+/64bit/envs/adhoc/Lib;C:/Python+/64bit/envs/adhoc/Lib/site-packages/'
let g:pymode_lint_config='~/pylint.rc'

" jsx
let g:jsx_ext_required = 0
let g:mta_filetypes = {
    \ 'javascript.jsx': 1,
    \}
let g:closetag_filenames = "*html,*.xhtml,*.phtml,*.php,*.js,*.jsx"
" let g:prettier#config#parser = 'babylon'
" let g:user_emmet_leader_key='<c-l>'
let g:user_emmet_settings = {
    \ 'javascript.jsx' : {
    \     'extends' : 'jsx',
    \ },
    \}

" let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsExpandTrigger="<c-l>"

let g:syntastic_javascript_checkers = ['eslint']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
let g:syntastic_javascript_eslint_exe = 'eslint % --fix'



autocmd BufWritePost *.js AsyncRun -post=checktime eslint --fix %
" autocmd BufWritePre *.js execute ':!eslint --fix %'
autocmd BufWritePre *.py execute ':Black'
autocmd BufWritePost .tmux.conf execute ':!tmux source-file %'
autocmd BufWritePost init.vim execute ':source %'


" map

map <C-n> :NERDTreeToggle<CR>
map <C-/> :Commentary
inoremap <C-/> :Commentary

" insert mode mappings
imap jj <Esc>
imap Jj <Esc>
imap jJ <Esc>
imap JJ <Esc>
imap <C-_> <Esc>:Commentary<cr>i
imap <silent><C-v> ! powershell.exe Get-Clipboard <CR>

" normal mode mappings
nnoremap <C-/> :Commentary
nnoremap <Tab> :UndoTreeToggle
nnoremap <C-_> :Commentary<cr>
nnoremap ` '
nnoremap ' `
noremap Q @@
nnoremap <silent> <C-S> :<C-u>Update<CR>


" <C-W> commands without <C-W>
" I commonly use cmder on windows which uses <C-W> to close a tab
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" leader keys
let mapleader = " "

" formatting
nnoremap <leader><leader>p :!prettier % --write L<cr>
nnoremap <leader>f :Black<cr>
nnoremap <leader>c :Commentary<cr>
nnoremap <leader>u gu

" navigation
nnoremap <leader>t :Files<cr>
nnoremap <leader>r :Tags<cr>
nnoremap <cr> :Buffers<cr>
nnoremap <leader>n :b#<cr>
nnoremap <leader>s :sp<cr>
nnoremap <leader>v :vsp<cr>
nnoremap <D-A-LEFT> <C-W>h
nnoremap <D-A-DOWN> <C-W>j
nnoremap <D-A-UP> <C-W>k
nnoremap <Alt-j> <C-W>j
nnoremap <Alt-k> <C-W>k
nnoremap <D-A-RIGHT> <C-W>l
nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
nnoremap <leader>H :vsp<cr><c-w>h
nnoremap <leader>J :sp<cr>
nnoremap <leader>K :sp<cr><c-w>k
nnoremap <leader>L :vsp<cr>
nnoremap <leader>i :TagbarToggle<CR>


" interface
nnoremap <silent> <leader>z :Goyo<cr>
nnoremap <silent> <leader><leader>l :Limelight!!<cr>
nnoremap <silent><leader>o :CtrlSpace O<CR>
map <silent> <leader><cr> :noh<cr>
nnoremap <silent> <leader>\ :highlight LineNr ctermfg=8 ctermbg=black<cr> :highlight CursorLineNr ctermfg=red<cr> :highlight Visual ctermbg=8<cr>
" git
nnoremap <silent><leader>gd :Gdiff<cr>
nnoremap <silent><leader>gs :Gstatus<cr>
nnoremap <silent><leader>gc :Gcommit<cr>

" shortcuts
nnoremap <silent><leader>w :w<cr>
nnoremap <silent><leader>q :q<cr>
nnoremap <silent><leader>x :x<cr>


" Function Keys
map <F6> :setlocal spell! spelllang=en_us<CR>
nnoremap <F5> :buffers<CR>:buffer<Space>

" nnoremap <silent><leader>y "cyy :! echo "<C-R>c" \| clip.exe <CR>
nnoremap <silent><leader>y :w! ~/.vimbuffer \| !cat ~/.vimbuffer \| clip.exe <CR><CR>
vmap <silent><leader>y :w! ~/.vimbuffer \| !cat ~/.vimbuffer \| clip.exe <CR><CR>
nnoremap <silent><leader>p ! powershell.exe Get-Clipboard <CR>
nnoremap zt zt<C-Y><C-Y><C-Y>

" bubbling
nmap <C-k> ddkP
nmap <C-j> ddp

vmap <C-k> xkP`[V`]
vmap <C-j> xp`[V`]


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
" highlight LineNr ctermfg=grey ctermbg=black
" highlight CursorLineNr ctermfg=red
" hi clear LineNr
highlight Visual ctermbg=8

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


" swapped smooth-scroll for comfortable-motion
" noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 1)<CR>
" noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 1)<CR>
" noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
" noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

call plug#begin('~/.local/share/nvim/plugged')

" Plug 'powerline/powerline'

" Plug 'VundleVim/Vundle.vim'
" Plug 'bling/vim-airline'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'dbext.vim'
" Plug 'dhruvasagar/vim-table-mode'
" Plug 'digitaltoad/vim-pug'
" Plug 'easymotion/vim-easymotion'
" Plug 'flazz/vim-colorschemes'
" Plug 'josudoey/vim-eslint-fix'
" Plug 'maksimr/vim-jsbeautify'
" Plug 'malithsen/trello-vim'
" Plug 'maralla/completor.vim'
" Plug 'mhinz/vim-startify'
" Plug 'mileszs/ack.vim'
" Plug 'plasticboy/vim-markdown'
" Plug 'suan/vim-instant-markdown'
" Plug 'terryma/vim-smooth-scroll'
" Plug 'tpope/vim-dadbod'
" Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'majutsushi/tagbar'
Plug 'djoshea/vim-autoread'
Plug 'captbaritone/repo-vimrc'
Plug 'SirVer/ultisnips'
Plug 'TaDaa/vimade'
Plug 'airblade/vim-gitgutter'
Plug 'ambv/black'
Plug 'amix/vim-zenroom2'
Plug 'easymotion/vim-easymotion'
Plug 'epilande/vim-es2015-snippets', {'for': 'javascript'}
Plug 'epilande/vim-react-snippets', {'for': 'javascript'}
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf', { 'do': 'yes \| ./install'  }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'justinmk/vim-sneak'
Plug 'mattn/emmet-vim'
Plug 'mbbill/undotree'
Plug 'michaeljsmith/vim-indent-object'
Plug 'michalliu/sourcebeautify.vim'
Plug 'mileszs/ack.vim'
Plug 'mxw/vim-jsx', {'for': 'javascript'}
Plug 'othree/html5.vim', {'for': 'html'}
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
Plug 'prettier/vim-prettier'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic' 
Plug 'shime/livedown'
Plug 'skywind3000/asyncrun.vim'
Plug 'styled-components/vim-styled-components'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'valloric/matchtagalways'
Plug 'valloric/youcompleteme', {'do': './install.py'}
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'w0rp/ale'
Plug 'wellle/targets.vim'
Plug 'yuttie/comfortable-motion.vim'
call plug#end()

" " AG --> Ack
let g:ackprg = 'ag --vimgrep --smart-case'

cnoreabbrev ag ACK
cnoreabbrev aG ACK
cnoreabbrev Ag ACK
cnoreabbrev AG ACK

if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""' 
endif

let g:airline_powerline_fonts=1

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Markdown Settings
"
" These settings used to work but cause neo vim to take a really long time to
" load a markdown file
"
" autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'sql', 'pug']
" let g:markdown_minlines = 100
" let g:instant_markdown_autostart = 0

" On The Fly Table mode
" function! s:isAtStartOfLine(mapping)
"   let text_before_cursor = getline('.')[0 : col('.')-1]
"   let mapping_pattern = '\V' . escape(a:mapping, '\')
"   let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
"   return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
" endfunction

" inoreabbrev <expr> <bar><bar>
"           \ <SID>isAtStartOfLine('\|\|') ?
"           \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
" inoreabbrev <expr> __
"           \ <SID>isAtStartOfLine('__') ?
"           \ '<c-o>:silent! TableModeDisable<cr>' : '__'

colors onedark


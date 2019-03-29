" vim:fdm=marker

" General {{{1
filetype plugin indent on
runtime! macros/matchit.vim
syntax on
set ttyfast
set backspace=2

" Text editing defaults {{{1
set omnifunc=syntaxcomplete#Complete
set completeopt-=preview
set laststatus=2
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set smarttab
set number
set encoding=utf-8
set fileencoding=utf-8
set splitbelow
set splitright
set scrolloff=1
set incsearch
set ignorecase
set hlsearch
set history=1000
set cursorline
set nowrap
set nolist
set clipboard=unnamed
set ruler

" Plugins {{{1
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'                                   " Column with line changes
Plug 'cohama/lexima.vim'                                        " Brace autocloser that works with .
Plug 'neovim/node-host'																					" dependency of js context coloring
Plug 'dag/vim-fish'                                             " Syntax highlighting for fish files
Plug 'editorconfig/editorconfig-vim'                            " Settings based on .editorconfig file
Plug 'elentok/todo.vim'                                         " Todo.txt support
Plug 'elixir-lang/vim-elixir'                                   " Elixer support
Plug 'ElmCast/elm-vim'                                          " Elm language syntac
Plug 'elzr/vim-json'                                            " Better JSON support
Plug 'evanmiller/nginx-vim-syntax'                              " Syntax highlighting for nginx files
Plug 'haya14busa/incsearch.vim'                                 " Improved incremental searching
Plug 'itchyny/lightline.vim'                                    " Status bar
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'                                        " Distraction free writing mode
Plug 'junegunn/gv.vim'                                          " Git commit browser
Plug 'junegunn/vim-easy-align'                                  " Alignment commands
Plug 'justinmk/vim-dirvish'                                     " File explorer
Plug 'kassio/neoterm'                                           " Neovim terminal helpers
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }            " JS code analysis
Plug 'moll/vim-node'                                            " Better support for node modules
Plug 'mustache/vim-mustache-handlebars'                         " Better support for mustache and handlebars files
Plug 'nelstrom/vim-visual-star-search'                          " Easily search for the selected text
Plug 'Olical/vim-enmasse'                                       " Editable quickfix list
Plug 'Shougo/deoplete.nvim'                                     " Code completion
Plug 'tommcdo/vim-lion'                                         " Alignment commands
Plug 'tpope/vim-abolish'                                        " Working with variants of a world
Plug 'tpope/vim-commentary'                                     " (Un)commenting lines
Plug 'tpope/vim-eunuch'                                         " Unix commands
Plug 'tpope/vim-fugitive'                                       " GIT integration
Plug 'tpope/vim-jdaddy'                                         " JSON manipulation commands
Plug 'tpope/vim-repeat'                                         " Use dot operator with plugins
Plug 'tpope/vim-speeddating'                                    " Manipulation of date strings
Plug 'tpope/vim-surround'                                       " Commands to work with surroundings
Plug 'tpope/vim-unimpaired'                                     " Miscellaneous commands
Plug 'vim-scripts/CursorLineCurrentWindow'                      " Only show the cursorline in the active window
Plug 'vim-scripts/syntaxudev.vim'                               " Syntax highlighting for udev rules files
Plug 'wavded/vim-stylus'                                        " Styling of .styl fi.es
Plug 'scrooloose/nerdtree'                                      " The well known nerd tree'scrooloose/nerdtree'
" Plug 'robinfehr/nerdtree-git-plugin'                            " Git status flags for nerd tree (own fork)
Plug 'ryanoasis/vim-devicons'                                   " nerd tree dev icons for file types
Plug 'luochen1990/rainbow'                                      " rainbow braces should work with yajs
" Plug 'jistr/vim-nerdtree-tabs'                                  " tabs for nerdtree
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'                  " Nerdtree colors for icons based on file types
Plug 'vim-airline/vim-airline'                                  " Airline as status line
Plug 'vim-airline/vim-airline-themes'                           " Airline themes
Plug 'scrooloose/syntastic'                                     " Syntax checking
Plug 'othree/yajs.vim'                                          " Syntax matching for further highlight
Plug 'othree/es.next.syntax.vim'                                " ES7 syntax classes etc.
Plug 'othree/javascript-libraries-syntax.vim'                   " Javascript plugin syntax highlighting (react, etc.)
Plug 'mxw/vim-jsx'                                              " Hightlight JSX
Plug 'mileszs/ack.vim'                                          " ack search
" Plug 'heavenshell/vim-prettier'                                 " Prettier
Plug 'leafgarland/typescript-vim'                               " Typescript syntax highlighting
Plug 'Quramy/tsuquyomi'                                         " Typescript parser for e.g. navigations to type definitions
Plug 'Shougo/vimproc.vim', {'do' : 'make'}                      " Async execution
" Plug 'othree/yajs.vim'                                          " ES7 syntax classes etc.
Plug 'brooth/far.vim'                                           " find and replace
Plug 'ludovicchabant/vim-gutentags'                             " Plugin for universal ctags
call plug#end()

" Disable git plugin per default since we should improve the perf there.
let g:NERDTreeShowGitStatus = 0
" GitGutter staged flags
let g:gitgutter_staged = 1
" adding buffer tabs in airline
let g:airline#extensions#tabline#enabled = 1

" disabling the flags in the NERDTREE git plugin
let g:NERDTreeGitStatusWithFlags = 0
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeMapPrevHunk = '<S-Char-9>'
let g:NERDTreeMapNextHunk = '<Char-9>'

" adding icons to ctrlp
" let g:webdevicons_enable_ctrlp = 1

" adding folder icons to NERDTREE
" let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" let g:DevIconsEnableFoldersOpenClose = 1

" adding the flags to NERDTree
" let g:webdevicons_enable = 1
" let g:webdevicons_enable_nerdtree = 1

" Libary syntax support
let g:used_javascript_libs = 'underscore,react,flux,requirejs'

" nerdtree tabs
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_autofind = 1
let g:nerdtree_tabs_synchronize_view = 1

" addtional stuff
let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_skip_check = 1
let g:AutoPairsFlyMode = 1
let g:ctrlp_user_command = 'ag %s node_modules'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](doc|tmp|node_modules)',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
let g:deoplete#enable_at_startup = 1
let g:EditorConfig_exclude_patterns = ['.git/COMMIT_EDITMSG']
let g:elm_format_autosave = 1
let g:elm_make_show_warnings = 1
let g:elm_syntastic_show_warnings = 1
let g:fist_anonymously=0
let g:fzf_layout = { 'window': 'enew' }

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_check_on_open = 1
let g:syntastic_auto_loc_list = 1

let g:vim_json_syntax_conceal = 0
let g:vim_json_warnings = 0
set shell=/bin/bash                                             " required by gitgutter plugin



" Style {{{1
"set guifont=Monaco\ Regular:h15
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
"set gfn=Monaco:h13
set linespace=2
let g:kolor_italic=1                    " Enable italic. Default: 1
let g:kolor_bold=1                      " Enable bold. Default: 1
let g:kolor_underlined=0                " Enable underline. Default: 0
let g:kolor_alternative_matchparen=0    " Gray 'MatchParen' color. Default: 0
colorscheme Tomorrow-Night-Eighties

" set true colors
if has("termguicolors")
    set t_8f=\[[38;2;%lu;%lu;%lum
    set t_8b=\[[48;2;%lu;%lu;%lum
endif
" Mappings {{{1
let mapleader=" "
let maplocalleader="\\"

" Easy movement between windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set directory to current's file dir for only that window
nnoremap ,cd :lcd %:p:h<CR>:pwd<CR>

" Smarter redraw
nnoremap <silent> <leader>c :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>

" Open vimrc in vertical split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Perform fuzzy file searching
nnoremap <C-P> :Files<CR>
nnoremap <C-B> :Buffers<CR>

" Aligning
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Hightlight all incremental search results
map /  <plug>(incsearch-forward)
map ?  <plug>(incsearch-backward)
map g/ <plug>(incsearch-stay)

" Terminal mappings
nnoremap <silent> <C-T> :Ttoggle<cr>
tnoremap <silent> <C-T> <C-\><C-n>:Ttoggle<cr>
tnoremap <C-[> <C-\><C-n>
tnoremap <C-O> <C-\><C-n><C-o>
" Map F1 to escape - help wont pop up anymore that annoyingly
map <F1> <Esc>
imap <F1> <Esc>
" NerdTree mappings
map <C-n> :NERDTreeToggle<CR>
map <C-m> :NERDTreeFind<CR>

"Resizing of vertical split windows
map <C-b> :vertical resize +20<CR>
map <C-s> :vertical resize -20<CR>
map <C-h> :resize +20<CR>
map <C-l> :resize -20<CR>

" CamelCase yanking or deleting by yM, dM
" onoremap M :<c-u>execute "normal! /[A-Z]\r:nohlsearch\r"<cr>

let g:ackprg = 'ag --nogroup --nocolor --column'

" Autocmds {{{1
autocmd FileType markdown nnoremap <localleader>m :LivedownToggle<cr>
autocmd FileType javascript nnoremap <localleader>c :JSContextColorToggle<cr>
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.sjs set filetype=javascript
autocmd FileType dirvish setlocal nonumber
autocmd FileType dirvish sort r /[^\/]$/
autocmd WinEnter term://* startinsert


" Mouse {{{1
set mouse=a

" Hooks {{{1
autocmd BufWritePre * :%s/\s\+$//e  " automatically remove trailing whitespace on writing GitHub, Inc. Terms Privacy Security Status Help
" deoplete tab-completion
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" goto variable definition with gb
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>
" nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


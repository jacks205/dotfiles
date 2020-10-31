syntax on 

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set backspace=indent,eol,start
set termguicolors

set wildmenu
set wildignore+=**/Pods/**
set hidden

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

" Themes
" Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'arzg/vim-colors-xcode'

" Helpers

Plug 'tpope/vim-sensible'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'scrooloose/nerdtree'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'git@github.com:ycm-core/YouCompleteMe.git'
Plug 'mbbill/undotree'
Plug 'vim-syntastic/syntastic'

" Javascript

Plug 'othree/yajs.vim'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jiangmiao/auto-pairs'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'w0rp/ale'

" Swift
" Plug 'keith/swift.vim'
Plug 'jph00/swift-apple'

call plug#end()

" colorscheme dracula
colorscheme xcodedark
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/']
let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

let g:ycm_server_python_interpreter = '/Users/markjackson/.pyenv/versions/3.8.5/bin/python'

" Syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Swift.vim
" let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']

" Xcode Theme
let g:signify_sign_add    = '┃'
let g:signify_sign_change = '┃'
let g:signify_sign_delete = '•'

let g:signify_sign_show_count = 0 " Don’t show the number of deleted lines.

" Javascript
" au FileType javascript setlocal formatprg=prettier
" au FileType javascript.jsx setlocal formatprg=prettier
" au FileType typescript setlocal formatprg=prettier\ - parser\ typescript

let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_fixers = { 'javascript': ['eslint'], 'typescript': ['prettier', 'tslint'], 'scss': ['prettier'], 'html': ['prettier'], 'reason': ['refmt'] }

" Fugitive Conflict Resolution
nnoremap <leader>gd :Gvdiffsplit!<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>

" Remaps
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
nmap <leader>pf :CtrlP<CR>
" nnoremap <Leader>gd :GoDef<Enter>
nnoremap <Leader>pt :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>pv :NERDTreeFind<CR>
nnoremap <silent> <Leader>vr :vertical resize 30<CR>
nnoremap <silent> <Leader>r+ :vertical resize +5<CR>
nnoremap <silent> <Leader>r- :vertical resize -5<CR>

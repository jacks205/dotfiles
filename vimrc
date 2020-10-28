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

set colorcolumn=120
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

" Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'arzg/vim-colors-xcode'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'git@github.com:ycm-core/YouCompleteMe.git'
Plug 'mbbill/undotree'
Plug 'vim-syntastic/syntastic'
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


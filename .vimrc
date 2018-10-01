" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" We need to specitfy another PATH
" Is it really necessary this ?????
let $PATH='$HOME/.cargo/bin:/usr/bin:/usr/local/bin:/bin:/usr/sbin:/sbin'

" List of plugins made thanks to : https://vimawesome.com/
" Make sure you use single quotes

" vim-fugitive : A git wrapper (https://github.com/tpope/vim-fugitive)
Plug 'tpope/vim-fugitive'

" nerdtree : A tree explorer plugin for Vim (https://github.com/scrooloose/nerdtree)
Plug 'scrooloose/nerdtree'

" vim-colors-solarized (https://github.com/altercation/vim-colors-solarized)
Plug 'altercation/vim-colors-solarized'

" vim-colorschemes (https://github.com/flazz/vim-colorschemes)
Plug 'flazz/vim-colorschemes'

" syntastic : Syntax checking hacks for vim (https://github.com/vim-syntastic/syntastic)
Plug 'scrooloose/syntastic'

" airline (https://github.com/vim-airline/vim-airline)
Plug 'bling/vim-airline'

" airline-themes : Airline themes (better with powerline) (https://github.com/vim-airline/vim-airline-themes)
Plug 'vim-airline/vim-airline-themes'

" tagbar : Display tags in a window (https://github.com/majutsushi/tagbar)
Plug 'majutsushi/tagbar'

" NERD commenter (https://github.com/scrooloose/nerdcommenter)
Plug 'scrooloose/nerdcommenter'

" youcompleteme : autocompletion (https://github.com/valloric/youcompleteme)
Plug 'valloric/youcompleteme'

" delimitmate : Auto-completion for quotes, parens, brackets, ..
Plug 'raimondi/delimitmate'

" typescript-vim
Plug 'leafgarland/typescript-vim'

" Close xml tags
Plug 'docunext/closetag.vim'

" Shows git diffs for a file
Plug 'airblade/vim-gitgutter'

" Toggle the paste option (no issue with indentation anymore)
Plug 'roxma/vim-paste-easy'

" The ultimate snippet solution for Vim
Plug 'sirver/ultisnips' " track the engine

" vim snipmate default snippets
Plug 'honza/vim-snippets' " Snippets separated from the engine

" add this line to your .vimrc file
Plug 'mattn/emmet-vim'

" Show thin vertical lines for indent
" Plug 'yggdroot/indentline'

" To install next :
" https://vimawesome.com/plugin/ctrlp-vim-red
" https://vimawesome.com/plugin/tabular

call plug#end()


" Vim configurations

filetype on
syntax on
colorscheme hybrid_material
" smyck ; solarized ; matrix ; hybrid_material ; dante

let g:airline_theme='light'

set guifont=Menlo\ Regular:h18

" Detect filetypes and indent it
filetype indent on
filetype plugin indent on

" Highlight matching brace
set showmatch

" Highlight all search results
set hlsearch

" Search as characters are entered
set incsearch

" Tab of 2 spaces and other things about indentation
set nowrap
set tabstop=2       " The width of a TAB is set to 2.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=2    " Indents will have a width of 2
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set autoindent      " Auto-indent new lines
set smartindent

" Text width
set textwidth=90   " Maximum width for a line

" Line numbers
set number          " show line numbers in vim

" Map of the files
map <C-n> :NERDTreeToggle<CR>

set splitright " Open new splits to the right
set splitbelow " Open new splits to the bottom

" Speed up with history
set hidden
set history=100

" Highlight current line
set cursorline

" Menu for autocompletes
set wildmenu

" Settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
" Following line is the height for the syntastic error window
let g:syntastic_loc_list_height=2
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" When F8 is pressed, tagbar is launched
nmap <F8> :TagbarToggle<CR>

" Useful settings for NERD commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Issue with delimitmate and xml tags
let g:closetag_filenames = "*.xml,*.html,*.xhtml,*.phtml,*.php"
au FileType xml,html,phtml,php,xhtml,js let b:delimitMate_matchpairs = "(:),[:],{:}"

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-space>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Try to map somewhere a big down/up
" nnoremap <D-Up> 7k
" nnoremap <D-Down> 7j

" Remove SQL completion
let g:omni_sql_no_default_maps = 1

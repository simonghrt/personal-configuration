" Pathogen launch
execute pathogen#infect()
filetype indent on

" Highlight matching brace
set showmatch

" Highlight all search results
set hlsearch

" Tab of 4 spaces and other things about indentation
set nowrap
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set autoindent      " Auto-indent new lines
set smartindent

" Line numbers
set number          " show line numbers in vim
syntax on

" Color scheme
colorscheme matrix

" Map of the files
map <C-n> :NERDTreeToggle<CR>

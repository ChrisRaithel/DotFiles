set history=500 "Set number of commands, searches, and expressions remembered
set autoread "If file is edited outside of vim, automatically update
set number "Line numbering
set relativenumber "Sets numbering to show number of lines from selected line
set wildmenu "Autocomplete tab menu for commands
set ruler "Always show position in document
set lazyredraw "Screen wont update when using commands or macros which arent typed
set magic "Allows use of regular expressions in search
set ignorecase "Ignores case in searches
set smartcase "Matches case if an uppercase character is used in search
set hlsearch "Highlight all search results
set incsearch "Show first result during search
set tabstop=4 "Set number of visual spaces for each tab
set softtabstop=4 "Number of spaces to add when tab is pressed, and delete on backspace
"set backup "Make backups of existing files, which are edited but not saved
set backupdir=~/.vim-tmp "Directory to store backups
set backupskip=/tmp/*,/private/tmp/* "Do not backup files in these directories
set directory=~/.vim-tmp "Directory to store .swp files (Similar to backups"
set writebackup "Make backup before writing file
set clipboard=unnamedplus "Set vim clipboard to system clipboard (For copy and paste)
set ttimeoutlen=50 "Update vim-airline faster when switching modes

syntax enable "Enable syntax processing and coloring
filetype on "Enable filetype processing
filetype plugin on "Enable filetype plugin
colorscheme molokai "Current colorscheme
hi Normal ctermbg=none "Prevents colorscheme from changing background (Transparencies sake)

"Plugins
filetype on "Enable filetype processing
filetype plugin on "Enable filetype plugin

call plug#begin('~/.vim/plugged')
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'kien/ctrlp.vim'
call plug#end()

"Plugin configuration
"Airline
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
let g:airline_symbols_ascii = 1

if !exists('g:airline_symbols')
		let g:airline_symbols = { }
endif

let g:airline_skip_empty_sections = 1
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''

" Set default for .tex extension
let g:tex_flavor = "latex"

let mapleader = "," "Set leader for upcoming commands

"Update current vim session with new config
nnoremap <leader>S :source ~/.vimrc<cr>
"Force write
nnoremap <leader>w :w!<cr>
"Sudo write (for readonly files)
command! W w !sudo tee % > /dev/null
"Exit vim if file isnt edited
nnoremap <leader>q :q<cr>
"Force exit
nnoremap <leader>Q :q!<cr>
"Turn off search highlights from hlsearch
nnoremap <leader>s :noh<cr>
"Toggle folds
nnoremap <leader>f za

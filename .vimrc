set history=500 "Set number of commands, searches, and expressions remembered
set autoread "If file is edited outside of vim, automatically update
set number "Line numbering
set relativenumber "Sets numbering to show number of lines from selected line
set wildmenu "Autocomplete tab menu for commands
set ruler "Always show position in document
set lazyredraw "Screen wont update when using commands or macros which aren't typed
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
set splitbelow "Make new splits appear below the current window
set splitright "and to the right
set sessionoptions-=options "Disable recording options when saving sessions, fixes highlighting issues
set spelllang=en "Set spellcheck language to English
set spellfile=$HOME/.vim/spell/en.utf-8.add "Path to spellcheck file, where ingored spellings are stored

"Disable auto indenting (Until we can get it to cooperate, this is the best
"solution)
set noautoindent nocindent nosmartindent indentexpr=

syntax enable "Enable syntax processing and coloring
filetype on "Enable filetype processing
filetype plugin on "Enable filetype plugin
let g:tex_flavor = "latex" "Set default for .tex extension

"Colorscheme configuration
set background=dark "Dark version of solarized colorscheme, just in case
let g:solarized_termcolors=256 "Necessary for solarized colorscheme to work properly, don't ask.
colorscheme molokai "Current colorscheme
hi Normal ctermbg=none "Prevents colorscheme from changing background (Transparencies sake)
hi LineNr ctermbg=none "Same thing but for linenumber gutter
"hi TabLineFill term=underline cterm=underline ctermfg=15 ctermbg=0


"Plugins
filetype on "Enable filetype processing
filetype plugin on "Enable filetype plugin

call plug#begin('~/.vim/plugged') "Calls vimplug
	Plug 'vim-airline/vim-airline' "Nice statusline
	Plug 'vim-airline/vim-airline-themes' "Themes for vim-airline
	Plug 'kien/ctrlp.vim' "Fuzzy file finder, buffer searcher, and more
	Plug 'scrooloose/syntastic' "Syntax checking plugin
	"Plug 'valloric/youcompleteme' "Might want later, but not useful enough at the moment
	Plug 'godlygeek/tabular' "Automatically arrange lines with spaces/tabs
	"Plug 'ntpeters/vim-better-whitespace' "Highlights trailing whitespace, automatically deletes on write
	Plug 'scrooloose/nerdtree' "File explorer
call plug#end()


" Plugin configuration

" Airline
let g:airline#extensions#tabline#enabled = 0
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
let g:airline_symbols_ascii = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = { }
endif

"Symbols
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
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''

" Syntastic
set statusline+=%#warningmsg# "Shows warning on statusline
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

"Filetypes not checked
let g:syntastic_mode_map = {
	\ "mode": "active",
	\ "passive_filetypes": ["tex"] }

"Checker used for C++ files
let g:sytastic_cpp_compiler="g++"

" Better Whitespace
"autocmd VimEnter * ToggleStripWhitespaceOnSave "Removes trailing whitespace on save


let mapleader = "," "Set leader for upcoming commands

"Update current vim session with new config
nnoremap <leader>S :source ~/.vimrc<cr>
"Force write
nnoremap <leader>w :w<cr>
"Exit vim if file isn't edited
nnoremap <leader>q :q<cr>
"Force exit
nnoremap <leader>Q :q!<cr>
"Turn off search highlights from hlsearch
nnoremap <leader>s :nohlsearch<cr>
"Next/previous buffer
nnoremap <leader>n :bnext<cr>
nnoremap <leader>N :bNext<cr>

"Bunch of binds to switching between splits easier
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>

"Toggle spellcheck mode
nnoremap <F2> :set spell!<cr>

"Here's one to start control-p in buffer mode
nnoremap <C-D> :CtrlPBuffer<cr>
"NERDTree
nnoremap <C-N> :NERDTree<cr>

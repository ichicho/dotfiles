" => Basic
set encoding=utf-8 " Encoding
set backspace=indent,eol,start " Fix backspace behavior
set splitright " Create new window at right
set splitbelow " Create new window below

" => Looks
set t_Co=256 " Enable 256 colors in vim
syntax on " Enable syntax highlighting
set number " Show line numbers
set showmatch " Show the matching part of the pair for [] {} and ()

" => Search
set hlsearch " Highlight search results
set incsearch " Search as you type
set wildmenu " Command-line completion

" => Indent
filetype plugin indent on " Enable file type based indentation

" => Fold
set foldmethod=indent " Enable folding
set foldlevelstart=99 " Open all folds when start buffer
nnoremap <space> za " Enable folding with the spacebar

" => Key remap
" Navigate windows with <Ctrl-hjkl> instead of <Ctrl-w> followed by hjkl
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

" => YCM setting
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_clangd_binary_path = "/usr/local/bin/clangd"

" => airline setting
set laststatus=2 " Always show statusline
let g:airline_exclude_preview = 1
let g:airline_extensions = ['branch'] " Enable specific extensions

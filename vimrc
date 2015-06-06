"" Set window settings for code and note taking

set autoindent
set number " show line number
set tabstop=2
set shiftwidth=4
set nocompatible " Disable vi-compatibility
set backspace=2
set autochdir
set showcmd
set laststatus=2
set encoding=utf-8
set ttimeoutlen=50

"" Pathogen 
"" Required for clean plugin install
execute pathogen#infect()
call pathogen#helptags() "generate helptags for everything in 'runtimepath'

syntax on " enable syntax highlighting
filetype plugin indent on " plugins and filetype on

"" + and - window resizing when multiple widows opened
"" if bufwinnr(1)
		"" map <F9> <C-W>>
		"" map <F10> <C-W><
		"" map <F11> <C-W>-
		"" map <F12> <C-W>+
"" endif

"" function for word processor mode
"" need to add thesaurus
func! WordProcessorMode()
		setlocal formatoptions=1
		setlocal noexpandtab
		map j gj
		map k gk
		set complete+=s
		set formatprg=par
		setlocal spell spelllang=en_us
		setlocal wrap
		setlocal linebreak
endfu
com! WP call WordProcessorMode()

"" Unmap the arrow keys in normal mode
nnoremap <down> <Nop>
nnoremap <left> <Nop>
nnoremap <right> <Nop>
nnoremap <up> <Nop>

"" Unmap the arrow keys in insert mode
"" currently disabled for fuf use 

" inoremap <down> <Nop>
" inoremap <left> <Nop>
" inoremap <right> <Nop>
" inoremap <up> <Nop> 

"" Unmap the arrow keys in visual mode
vnoremap <down> <Nop>
vnoremap <left> <Nop>
vnoremap <right> <Nop>
vnoremap <up> <Nop>

" Custom mappings 
nnoremap <F2> :cprev<CR>
nnoremap <F3> :cnext<CR>
nnoremap <F4> :NERDTreeToggle<CR>

" vimgrep to search for files in local parent and subdirectories
command! -nargs=+ Grep  execute 'silent vimgrep! <args> ../**/*.md*'

" Setup variables for powerline
" select a font to install into windows from .font folder
" change font in mintty terminal settings
let g:airline_powerline_fonts = 1 "need to setup default powerline symbols from selected font
let g:airline_theme='sol'

" Nerdtree show hidden files
let NERDTreeShowHidden=1

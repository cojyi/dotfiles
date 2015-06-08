"" Set window settings for code and note taking

set autoindent
set tabstop=8 " Number of spaces to insert tab character
set expandtab " Inserts spaces instead of tabs
set softtabstop=4
set shiftwidth=4
set number " show line number
set nocompatible " Disable vi-compatibility
set autochdir " Auto change directory
set showcmd " Show intermediate commands
set laststatus=2
set encoding=utf-8
set ttimeoutlen=50

"" Pathogen 

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

"" Word Processor mode 
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

" Powerline
" select a font to install into windows from .font folder
" change font in mintty terminal settings
let g:airline_powerline_fonts = 1 " use default font symbols 
let g:airline_theme='sol' " set Powerline theme

" Nerdtree show hidden files
" let NERDTreeShowHidden=1

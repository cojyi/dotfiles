"" Set window settings for code and note taking

set autoindent
set tabstop=4 " Number of spaces required to insert tab character
set noexpandtab " expandtab - works with space characters / noexpandtab - works with tab characters
set softtabstop=4
set shiftwidth=4
set backspace=2 " Make backspace like work like most other apps
set number " show line number
set nocompatible " Disable vi-compatibility
set autochdir " Auto change directory
set showcmd " Show intermediate commands
set laststatus=2
set encoding=utf-8
set ttimeoutlen=1000
set t_Co=256
set hidden " skip unsaved hidden buffers
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set hlsearch

"" Additional Settings

highlight Search ctermbg=LightBlue


"" Pathogen

execute pathogen#infect()
call pathogen#helptags() "generate helptags for everything in 'runtimepath'

syntax on " enable syntax highlighting
filetype plugin indent on " plugins and filetype on

"" Set Map Leader Key

let mapleader=","
noremap \ ,

"" Automatically apply vimrc changes after saving

if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

"" Custom Mappings

nmap <leader>o o<ESC>k
nmap <leader>O O<ESC>j
nmap <leader>n :bn<CR>
nmap <leader>p :bp<CR>
nmap <leader>d :bd<CR>
nmap <leader>v :tabedit $MYVIMRC<CR>

"" Shortcut to rapidly toggle `set list`

nmap <leader>l :set list!<CR>

""  Use the same symbols as TextMate for tabstops and EOLs

set listchars=tab:➤\ ,eol:¬


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
nnoremap <F4> :copen<CR>
nnoremap <F5> :NERDTreeToggle<CR>

" vimgrep to search for files in local parent and subdirectories

command! -nargs=+ Grep  execute 'silent vimgrep! <args> ../**/*.*'

" Powerline
" select a font to install into windows from .font folder
" change font in mintty terminal settings

let g:airline_powerline_fonts = 1 " use default font symbols 
let g:airline_theme='sol' " set Powerline theme

" Nerdtree show hidden files
" let NERDTreeShowHidden=1

let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just filenames

"" Ctrl-p settings

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = ''
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

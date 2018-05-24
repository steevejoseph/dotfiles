" General Vim settings
	syntax on
	let mapleader=","
	set autoindent
	set tabstop=4
	set shiftwidth=4
	set dir=/tmp/
	set relativenumber
	set number


" Language Specific
	" Tabs
		so ~/dotfiles/vim/tabs.vim

	" General
		"inoremap <leader>for <esc>Ifor (int i = 0; i < <esc>A; i++) {<enter>}<esc>O<tab>
		"inoremap <leader>if <esc>Iif (<esc>A) {<enter>}<esc>O<tab>


	" Java
		"inoremap <leader>sys <esc>ISystem.out.println(<esc>A);
		"vnoremap <leader>sys yOSystem.out.println(<esc>pA);

	" Java
		"inoremap <leader>con <esc>Iconsole.log(<esc>A);
		"vnoremap <leader>con yOconsole.log(<esc>pA);

	" C++
		"inoremap <leader>cout <esc>Istd::cout << <esc>A << std::endl;
		"vnoremap <leader>cout yOstd::cout << <esc>pA << std:endl;

	" C
		"inoremap <leader>out <esc>Iprintf(<esc>A);<esc>2hi
		"vnoremap <leader>out yOprintf(, <esc>pA);<esc>h%a

	" Typescript
		"autocmd BufNewFile,BufRead *.ts set syntax=javascript
		"autocmd BufNewFile,BufRead *.tsx set syntax=javascript

	" Markup
		inoremap <leader>< <esc>I<<esc>A><esc>yypa/<esc>O<tab>


" File and Window Management
	inoremap <leader>w <Esc>:w<CR>
	nnoremap <leader>w :w<CR>

	inoremap <leader>q <ESC>:q<CR>
	nnoremap <leader>q :q<CR>

	inoremap <leader>x <ESC>:x<CR>
	nnoremap <leader>x :x<CR>

	nnoremap <leader>e :Ex<CR>
	nnoremap <leader>t :tabnew<CR>:Ex<CR>
	nnoremap <leader>v :vsplit<CR>:w<CR>:Ex<CR>
	nnoremap <leader>s :split<CR>:w<CR>:Ex<CR>

" Return to the same line you left off at
	augroup line_return
		au!
		au BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\	execute 'normal! g`"zvzz' |
			\ endif
	augroup END


"" FROM ORIGINAL =============================================


" useful vim
set nocompatible
set visualbell
filetype off

"" better copypasta
set pastetoggle=<F2>
set clipboard=unnamed


" syntax highlighting
syntax on

" line numbers enabled
set number
set relativenumber
set expandtab


" set laststatus=2 " Always show status line


set nowrap " don't wrap lines

" Enhance command-line completion
set wildmenu
set wildmode=longest:list
set wildignore=*.swp,*.bak,*.pyc,*.class,*.out


" Add the g flag to search/replace by default
" set gdefault

" Map leader
let mapleader = ","


" Highlight current line
set cursorline

" Make tabs as wide as 4 spaces
set tabstop=4

" Longer undo history
set undofile
set history=500

" Intelligent case searching
set ignorecase
set smartcase
set incsearch
set hlsearch

" Show “invisible” characters
" set lcs=tab:>- ,trail:·,eol:¬,nbsp:_

" shows $ at EOL
set list


" Intelligent indenting
set autoindent
set cindent

" 4 space tabbing
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Parenthesis matching
set showmatch

" Show the filename in the window titlebar
set title

" Show cursor position
set ruler

" 80 character width plus highlighting boundary
set textwidth=78
set colorcolumn=+1
hi ColorColumn ctermbg=grey


" Don’t show the intro message when starting Vim
set shortmess=atI


" Show the (partial) command as it’s being typed
set showcmd

" Show the current mode
set showmode

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Enable mouse in all modes
set mouse=a

" Allow backspace in insert mode
set backspace=indent,eol,start


" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

" <Leader> + {h, l}: move L/R between tabs
map <Leader>h <esc>:tabprevious<CR>
map <Leader>l <esc>:tabnext<CR>

"" CTRL+{h,j,k,l} for movement between splits
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

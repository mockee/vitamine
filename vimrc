" Environment {
  set nocompatible
  filetype plugin indent on
" }

" NeoBundles {
  if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
  endif

  call neobundle#rc(expand('~/.vim/bundle/'))

  " Github Repos
  NeoBundle 'Shougo/vimproc'              " Interactive command execution
  NeoBundle 'Shougo/neocomplcache'        " Ultimate auto-completion system
  NeoBundle 'scrooloose/syntastic'        " Syntax checking hacks
  NeoBundle 'scrooloose/nerdtree'         " A tree explorer plugin
  NeoBundle 'scrooloose/nerdcommenter'    " Vim plugin for intensely orgasmic commenting
  NeoBundle 'kien/ctrlp.vim'              " Fuzzy file, buffer, mru, tag, etc finder
  NeoBundle 'mattn/zencoding-vim'
  NeoBundle 'hail2u/vim-css3-syntax'
  NeoBundle 'skammer/vim-css-color'
  NeoBundle 'wavded/vim-stylus'
  NeoBundle 'digitaltoad/vim-jade'
  NeoBundle 'pangloss/vim-javascript'
  NeoBundle 'tpope/vim-fugitive'

  " Github `vim-scripts`
  NeoBundle 'sudo.vim'

  " Auto-Installation
  if neobundle#exists_not_installed_bundles()
    echomsg 'Automatically install the following bundles: ' .
      \ string(neobundle#get_not_installed_bundle_names())
    execute ':NeoBundleInstall'
  endif
" }

" General {
  syntax on           " syntax highlighting
  set mouse=a         " automatically enable mouse usage
  set encoding=utf-8
  set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

  scriptencoding utf-8
  if has ('x') && has ('gui') " on Linux use + register for copy-paste
    set clipboard=unnamedplus
  elseif has ('gui') " one mac and windows, use * register for copy-paste
    set clipboard=unnamed
  endif

  set shortmess+=filmnrxoOtT      " abbrev. of messages (avoids 'hit enter')
  set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
  set virtualedit=onemore         " allow for cursor beyond last character
  set history=800                 " Store a ton of history (default is 20)
  set hidden                      " allow buffer switching without saving
" }

" Formatting {
  set nowrap                      " wrap long lines
  set autoindent                  " indent at the same level of the previous line
  set expandtab                   " tabs are spaces, not tabs
  set shiftwidth=2                " use indents of 2 spaces
  set tabstop=2                   " an indentation every two columns
  set softtabstop=2               " let backspace delete indent
  set diffopt+=iwhite,vertical    " ignore the difference of indents
  set matchpairs=(:),{:},[:],<:>
  set foldmethod=marker
" }

" UI {
	" colorscheme molokai
	colorscheme solarized

  if has('cmdline_info')
    set ruler                   " show the ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
    set showcmd                 " show partial commands in status line and
                                " selected characters/lines in visual mode
  endif

  if has('statusline')
    set laststatus=2
    " Broken down into easily includeable segments
    set statusline=%<%f\    " Filename
    set statusline+=%w%h%m%r " Options
    set statusline+=%{fugitive#statusline()} "  Git Hotness
    set statusline+=\ [%{&ff}/%Y]            " filetype
    set statusline+=\ [%{getcwd()}]          " current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
  endif

  set rnu                         " relative line number
  set numberwidth=4               " set the width of line number "gutter" column
  set linespace=2                 " set spaces between rows
  set ignorecase                  " case insensitive search
  set backspace=indent,eol,start  " backspace for dummies
  set smartcase                   " case sensitive when uc present
  set showmatch                   " show matching brackets/parenthesis
  set incsearch                   " find as you type search
  set wildmenu                    " show list instead of just completing
  set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.
  set whichwrap=b,s,h,l,<,>,[,]   " backspace and cursor keys wrap to
  set scrolljump=5                " lines to scroll when cursor leaves screen
  set scrolloff=3                 " minimum lines to keep above and below cursor
  set foldenable                  " auto fold code
  set cursorline                  " highlight current line
  set anti                        " make text pretty
" }

" GUI Settings {
  if has("gui_running") || has("gui_macvim")
    set guioptions-=T           " remove the MacVim's toolbar
    if has('gui_macvim')
      set transparency=5        " Make the window slightly transparent
     endif

    if has("gui_gtk2")
      set guifont=Consolas\ 13,Monaco\ 14
    else
      set guifont=Consolas:h13,Monaco:h13
    endif
  endif
" }

" Key Mapping {
  let mapleader = ","
  let g:mapleader = ","

  " Code folding options
  nmap <leader>f0 :set foldlevel=0<CR>
  nmap <leader>f1 :set foldlevel=1<CR>
  nmap <leader>f2 :set foldlevel=2<CR>
  nmap <leader>f3 :set foldlevel=3<CR>
  nmap <leader>f4 :set foldlevel=4<CR>
  nmap <leader>f5 :set foldlevel=5<CR>
  nmap <leader>f6 :set foldlevel=6<CR>
  nmap <leader>f7 :set foldlevel=7<CR>
  nmap <leader>f8 :set foldlevel=8<CR>
  nmap <leader>f9 :set foldlevel=9<CR>

  nmap <tab> 		v>
  nmap <s-tab> 	v<
  vmap <tab> 		>gv 
  vmap <s-tab> 	<gv

  nnoremap / /\v
  vnoremap / /\v

  " clearing highlighted search
  nmap <silent> <leader>/ :nohlsearch<CR>
" }

" NerdTree {
  map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
  map <leader>e :NERDTreeFind<CR>
  nmap <leader>nt :NERDTreeFind<CR>

  let NERDTreeShowBookmarks = 1
  let NERDTreeIgnore = ['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
  let NERDTreeChDirMode = 0
  let NERDTreeQuitOnOpen = 1
  let NERDTreeMouseMode = 2
  let NERDTreeShowHidden = 1
  let NERDTreeKeepTreeInNewTab = 1
  let g:NERDTreeWinSize = 20
  let g:nerdtree_tabs_open_on_gui_startup = 0

  " open a NERDTree automatically when vim starts up if no files were specified
  autocmd vimenter * if !argc() | NERDTree | endif
" }

" SyntaxCheckers {
  let g:syntastic_python_checker = 'flake8'
  let g:syntastic_python_checker_args = '--ignore="E401,E501"'
  let g:syntastic_javascript_jshint_conf = '~/.jshintrc'
" }

" neocomplcache {
  let g:neocomplcache_enable_at_startup = 1
" }

" nerdcommenter {
  nmap <leader>n<space> <plug>NERDCommenterToggle
  vmap <leader>n<space> <plug>NERDCommenterToggle
" }

" CtrlP {
  let g:ctrlp_map = '<c-p>'
  let g:ctrlp_cmd = 'CtrlP'
  let g:ctrlp_working_path_mode = 'ra'
  let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

  set wildignore+=*/tmp/*,*.so,*.swp,*.zip

  if has("gui_macvim")
    nnoremap <silent> <D-r> :CtrlPMRU<CR>
  endif

  nmap <silent> <leader>t :CtrlP<cr>
  nmap <silent> <leader>r :CtrlPMRU<cr>
" }

" Fugitive {
  nnoremap <silent> <leader>gs :Gstatus<CR>
  nnoremap <silent> <leader>gd :Gdiff<CR>
  nnoremap <silent> <leader>gc :Gcommit<CR>
  nnoremap <silent> <leader>gb :Gblame<CR>
  nnoremap <silent> <leader>gl :Glog<CR>
  nnoremap <silent> <leader>gp :Git push<CR>
"}

" Autocmd {
  autocmd! bufwritepost vimrc source ~/.vim/vimrc
" }

# Vitamine

Vim plugins, scripts and resources for my daily use.

## Installation

1. Clone Vitamine:
  ```bash
  $ git clone git@github.com:mockee/vitamine.git ~/.vim
  ```

3. Create link
  ```bash
    echo source ~/.vim/vimrc > ~/.vimrc
  ```

2. Fetch submodule - NeoBundle:
  ```bash
  $ cd ~/.vim && git submodule init && git submodule update
  ```

3. Launch MacVim or Vim, plugins and scripts will be installed automatically.

## Configured Bundles:

```viml
" NeoBundles {
  " Github Repos
  NeoBundle 'Shougo/vimproc'              " Interactive command execution
  NeoBundle 'Shougo/neocomplcache'        " Ultimate auto-completion system
  NeoBundle 'scrooloose/syntastic'        " Syntax checking hacks
  NeoBundle 'scrooloose/nerdtree'         " A tree explorer plugin
  NeoBundle 'scrooloose/nerdcommenter'    " Vim plugin for intensely orgasmic commenting
  NeoBundle 'kien/ctrlp.vim'              " Fuzzy file, buffer, mru, tag, etc finder
  NeoBundle 'myusuf3/numbers.vim'         " A vim plugin for better line numbers
  NeoBundle 'Lokaltog/vim-powerline'      " The ultimate vim statusline utility
  NeoBundle 'mattn/zencoding-vim'         " zen-coding for vim: http://code.google.com/p/zen-coding/
  NeoBundle 'ervandew/supertab'           " Perform all your vim insert mode completions with Tab
  NeoBundle 'hail2u/vim-css3-syntax'      " Add CSS3 syntax support to vim's built-in `syntax/css.vim`
  NeoBundle 'skammer/vim-css-color'       " Highlight colors in css files
  NeoBundle 'wavded/vim-stylus'           " Syntax Highlighting for Stylus
  NeoBundle 'digitaltoad/vim-jade'        " Vim Jade template engine syntax highlighting and indention
  NeoBundle 'pangloss/vim-javascript'     " Vastly improved vim's javascript indentation
  NeoBundle 'plasticboy/vim-markdown'     " Syntax highlighting and matching rules for Markdown
  NeoBundle 'tpope/vim-fugitive'          " A Git wrapper so awesome, it should be illegal
  NeoBundle 'tpope/vim-surround'          " quoting/parenthesizing made simple

  " Github `vim-scripts`
  NeoBundle 'sudo.vim'                    " Allows one to edit a file with prevledges from an unprivledged session
  NeoBundle 'ack.vim'                     " Plugin for the Perl module / CLI script 'ack'
  NeoBundle 'EasyMotion'                  " Vim motions on speed!
" }
```

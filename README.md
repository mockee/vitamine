# Vitamine

Vim plugins, scripts and resources for my daily use.

## Installation

1. Clone Vitamine:
  ```bash
  $ git clone git@github.com:mockee/vitamine.git ~/.vim
  ```

2. Install submodules & configured bundles
  ```bash
  $ ./install.sh
  ```

3. Download & install patched font Monaco for Vim-Powerline. [OSX](https://gist.github.com/1838072) / [Linux](https://gist.github.com/1634235)
  ```bash
  $ open ~/.vim/colors/fonts/Monaco+for+Powerline.otf
  ```

## Configured Bundles:

```viml
" Bundles {
  " Github Repos
  'Shougo/vimproc'              " Interactive command execution
  'Shougo/neocomplcache'        " Ultimate auto-completion system
  'scrooloose/syntastic'        " Syntax checking hacks
  'scrooloose/nerdtree'         " A tree explorer plugin
  'scrooloose/nerdcommenter'    " Vim plugin for intensely orgasmic commenting
  'kien/ctrlp.vim'              " Fuzzy file, buffer, mru, tag, etc finder
  'myusuf3/numbers.vim'         " A vim plugin for better line numbers
  'Lokaltog/vim-powerline'      " The ultimate vim statusline utility
  'Lokaltog/vim-easymotion'     " Vim motions on speed!
  'mattn/zencoding-vim'         " zen-coding for vim: http://code.google.com/p/zen-coding/
  'ervandew/supertab'           " Perform all your vim insert mode completions with Tab
  'hail2u/vim-css3-syntax'      " Add CSS3 syntax support to vim's built-in `syntax/css.vim`
  'skammer/vim-css-color'       " Highlight colors in css files
  'wavded/vim-stylus'           " Syntax Highlighting for Stylus
  'digitaltoad/vim-jade'        " Vim Jade template engine syntax highlighting and indention
  'pangloss/vim-javascript'     " Vastly improved vim's javascript indentation
  'plasticboy/vim-markdown'     " Syntax highlighting and matching rules for Markdown
  'tpope/vim-fugitive'          " A Git wrapper so awesome, it should be illegal
  'tpope/vim-surround'          " quoting/parenthesizing made simple
  'rizzatti/funcoo.vim'
  'rizzatti/dash.vim'           " Search Dash.app from Vim

  " Github `vim-scripts`
  'sudo.vim'                    " Allows one to edit a file with prevledges from an unprivledged session
  'ack.vim'                     " Plugin for the Perl module / CLI script 'ack'
  'taglist.vim'                 " Provides an overview of the structure of source code
  'UltiSnips'                   " The ultimate snippet solution for python enabled Vim
" }
```

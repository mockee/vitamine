# Vitamine

Vim plugins, scripts and resources for my daily use.

## Installation

1. Clone Vitamine:
  ```bash
  $ git clone git@github.com:mockee/vitamine.git ~/.vim
  ```

1. Install submodules & configured bundles
  ```bash
  $ ./install.sh
  ```

1. Build [YouCompleteMe](https://github.com/Valloric/YouCompleteMe#installation).

1. Download & install patched font Monaco for Vim-Powerline. [OSX](https://gist.github.com/1838072) / [Linux](https://gist.github.com/1634235)
  ```bash
  $ open ~/.vim/colors/fonts/Monaco+for+Powerline.otf
  ```

## Configured Bundles:

```viml
" Bundles {
  " Github Repos
  'Shougo/vimproc'              " Interactive command execution
  'Valloric/YouCompleteMe'      " A code-completion engine for Vim
  'scrooloose/syntastic'        " Syntax checking hacks
  'scrooloose/nerdtree'         " A tree explorer plugin
  'scrooloose/nerdcommenter'    " Vim plugin for intensely orgasmic commenting
  'ctrlpvim/ctrlp.vim'          " Fuzzy file, buffer, mru, tag, etc finder
  'myusuf3/numbers.vim'         " A vim plugin for better line numbers
  'Lokaltog/vim-powerline'      " The ultimate vim statusline utility
  'Lokaltog/vim-easymotion'     " Vim motions on speed!
  'ervandew/supertab'           " Perform all your vim insert mode completions with Tab
  'hail2u/vim-css3-syntax'      " Add CSS3 syntax support to vim's built-in `syntax/css.vim`
  'ap/vim-css-color'            " Highlight colors in css files
  'wavded/vim-stylus'           " Syntax Highlighting for Stylus
  'keitheis/vim-plim'           " Syntax Highlighting for Plim
  'digitaltoad/vim-jade'        " Vim Jade template engine syntax highlighting and indention
  'pangloss/vim-javascript'     " Vastly improved vim's javascript indentation
  'plasticboy/vim-markdown'     " Syntax highlighting and matching rules for Markdown
  'tpope/vim-fugitive'          " A Git wrapper so awesome, it should be illegal
  'tpope/vim-surround'          " quoting/parenthesizing made simple
  'rizzatti/funcoo.vim'
  'rizzatti/dash.vim'           " Search Dash.app from Vim
  'SirVer/ultisnips'            " The ultimate snippet solution for Vim
  'honza/vim-snippets'          " vim-snipmate default snippets
  'othree/yajs.vim'             " Enhanced javascript syntax file for Vim
  'mxw/vim-jsx'                 " React JSX syntax highlighting and indenting for vim

  " Github `vim-scripts`
  'sudo.vim'                    " Allows one to edit a file with prevledges fr
  'ack.vim'                     " Plugin for the Perl module / CLI script 'ack
  'taglist.vim'                 " Provides an overview of the structure of sou
  'Emmet.vim'                   " vim plugins for HTML and CSS hi-speed coding
" }
```

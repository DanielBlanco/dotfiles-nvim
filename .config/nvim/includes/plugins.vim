call plug#begin('~/.config/nvim/plugged')

"------------------------------------------------------------------------------
" Color Schemes:
" -----------------------------------------------------------------------------
Plug 'chriskempson/base16-vim'
Plug 'junegunn/seoul256.vim'

"------------------------------------------------------------------------------
" Utilities:
"------------------------------------------------------------------------------

" Fuzzy file, buffer, mru, tag, etc finder.
Plug 'kien/ctrlp.vim'
" A tree explorer plugin for vim.
"Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons'
" Vim plugin for the Perl module / CLI script 'ack<F37>
Plug 'mileszs/ack.vim'
" Provides insert mode auto-completion for quotes, parens, brackets, etc.
"Plug 'Raimondi/delimitMate'
" comment stuff out
Plug 'tpope/vim-commentary'
" pairs of handy bracket mappings
Plug 'tpope/vim-unimpaired'
" wisely add end in ruby, endfunction/endif/more in vim script, etc
Plug 'tpope/vim-endwise'
" Ghetto HTML/XML mappings
Plug 'tpope/vim-ragtag'
" quoting/parenthesizing made simple
"Plug 'tpope/vim-surround'
" Easily interact with tmux from vim.
"Plug 'benmills/vimux'
" lean & mean status/tabline for vim that's light as air
Plug 'bling/vim-airline'
" Syntax checking hacks for vim
Plug 'scrooloose/syntastic'
" Asynchronous :make using Neovim's job-control functionality.
Plug 'benekastah/neomake'
" Git wrapper
Plug 'tpope/vim-fugitive'
" enable repeating supported plugin maps with .
Plug 'tpope/vim-repeat'
" Aims to provide support for textual snippets, similar to TextMate
"Plug 'garbas/vim-snipmate'
" EditorConfig plugin for Vim
Plug 'editorconfig/editorconfig-vim'
" Interpret a file by function and cache file automatically
Plug 'MarcWeber/vim-addon-mw-utils'
" Some utility functions for VIM
Plug 'tomtom/tlib_vim'
" A simple tool for presenting slides in vim based on text files.
" Plug 'sotte/presenting.vim'
" Perform all your vim insert mode completions with Tab
Plug 'ervandew/supertab'
" Asynchronous build and test dispatcher
Plug 'tpope/vim-dispatch'
" Unobtrusive scratch window
" Plug 'mtth/scratch.vim'
" enhances netrw
Plug 'tpope/vim-vinegar'
" easily search for, substitute, and abbreviate multiple variants of a word
Plug 'tpope/vim-abolish'
" Simplifies the transition between multiline and single-line code
Plug 'AndrewRadev/splitjoin.vim'
" extended % matching for HTML, LaTeX, and many other languages
"Plug 'vim-scripts/matchit.zip'
" detect indent style (tabs vs. spaces)
Plug 'tpope/vim-sleuth'
" context-aware pasting
Plug 'sickill/vim-pasta'
" distraction-free writing
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
" focus tool. Good for presentating with vim
"Plug 'junegunn/limelight.vim', { 'on': 'Limelight' }

"------------------------------------------------------------------------------
" Language Specific Plugins:
"------------------------------------------------------------------------------

Plug 'mattn/emmet-vim', { 'for': 'html' }
Plug 'gregsexton/MatchTag', { 'for': 'html' }
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'moll/vim-node', { 'for': 'javascript' }
Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'jsx' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'Quramy/tsuquyomi', { 'for': 'typescript', 'do': 'npm install' }
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
" Plug 'juvenn/mustache.vim', { 'for': 'mustache' }
" Plug 'mustache/vim-mustache-handlebars'
" Plug 'digitaltoad/vim-jade', { 'for': 'jade' }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'wavded/vim-stylus', { 'for': ['stylus', 'markdown'] }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'ap/vim-css-color', { 'for': 'css' }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'itspriddle/vim-marked', { 'for': 'markdown', 'on': 'MarkedOpen' }
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'timcharper/textile.vim', { 'for': 'textile' }
" Plug 'tclem/vim-arduino'
" Plug 'davidoc/taskpaper.vim'
Plug 'slim-template/vim-slim', { 'for': 'slim' }

call plug#end()

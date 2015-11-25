call plug#begin('~/.nvim/plugged')

"------------------------------------------------------------------------------
" Color Schemes:
" -----------------------------------------------------------------------------
Plug 'chriskempson/base16-vim'
Plug 'nanotech/jellybeans.vim'
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

"------------------------------------------------------------------------------
" General:
"------------------------------------------------------------------------------

" load plugins from vundle
" source ~/.vim/plugins.vim

" Abbreviations
abbr funciton function
abbr teh the
abbr tempalte template
abbr fitler filter

set nocompatible " not compatible with vi
set autoread " detect when a file is changed

" make backspace behave in a sane manner
set backspace=indent,eol,start

" set a map leader for more key combos
let mapleader = ','
let g:mapleader = ','

set history=1000 " change history to 1000
set textwidth=120

" Tab control
"set noexpandtab " insert tabs rather than spaces for <Tab>
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=2 " the visible width of tabs
set softtabstop=2 " edit as if the tabs are 4 characters wide
set shiftwidth=2 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'
set completeopt+=longest

if has('mouse')
    set mouse=a
    " set ttymouse=xterm2
endif

set clipboard=unnamed

" faster redrawing
set ttyfast

set diffopt+=vertical

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" file type specific settings
if has('autocmd') && !exists('autocommands_loaded')
    let autocommands_loaded = 1
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType html setlocal ts=4 sts=4 sw=4 noexpandtab indentkeys-=*<return>
    autocmd FileType jade setlocal ts=2 sts=2 sw=2 noexpandtab
    autocmd FileType *.md.js :call SyntasticReset<cr>
    autocmd FileType markdown,textile setlocal textwidth=0 wrapmargin=0 wrap spell
    autocmd FileType .xml exe ":silent %!xmllint --format --recover - 2>/dev/null"
    autocmd FileType crontab setlocal nobackup nowritebackup
    "autocmd WinEnter * setlocal cursorline
    "autocmd WinLeave * setlocal nocursorline

    " automatically resize panes on resize
    autocmd VimResized * exe 'normal! \<c-w>='
    autocmd BufWritePost .vimrc source %
    autocmd BufWritePost .vimrc.local source %
    " save all files on focus lost, ignoring warnings about untitled buffers
    autocmd FocusLost * silent! wa

    autocmd BufNewFile,BufRead *.ejs set filetype=html
    autocmd BufNewFile,BufRead *.ino set filetype=c
    autocmd BufNewFile,BufRead *.svg set filetype=xml

    " make quickfix windows take all the lower section of the screen when there
    " are multiple windows open
    autocmd FileType qf wincmd J

    autocmd BufNewFile,BufReadPost *.md set filetype=markdown
    let g:markdown_fenced_languages = ['css', 'javascript', 'js=javascript', 'json=javascript', 'stylus', 'html']

    " autocmd! BufEnter * call ApplyLocalSettings(expand('<afile>:p:h'))

    autocmd! BufWritePost * Neomake
endif

" code folding settings
set foldmethod=syntax " fold based on indent
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1

"------------------------------------------------------------------------------
" User Interface:
"------------------------------------------------------------------------------

set so=7 " set 7 lines to the cursors - when moving vertical
set wildmenu " enhanced command line completion
set hidden " current buffer can be put into background
set showcmd " show incomplete commands
set noshowmode " don't show which mode disabled for PowerLine
set wildmode=list:longest " complete files like a shell
set scrolloff=3 " lines of text around cursor
set shell=$SHELL
set cmdheight=1 " command bar height

set title " set terminal title

" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros

set magic " Set magic on, for regex

set showmatch " show matching braces
set mat=2 " how many tenths of a second to blink

" Will help me align my code to 80 chars.
set colorcolumn=80
highlight ColorColumn guibg=Gray

" error bells
set noerrorbells
set visualbell
set t_vb=
set tm=500

" switch syntax highlighting on
syntax on

set encoding=utf8
let base16colorspace=256  " Access colors present in 256 colorspace"
" Explicitly tell vim that the terminal supports 256 colors"
set t_Co=256

" Background and theme colors
execute "set background=".$BACKGROUND

let g:seoul256_background=235
execute "colorscheme seoul256"

" set number " show line numbers
" set relativenumber " show relative line numbers
set number " show the current line number"

set wrap "turn on line wrapping
set wrapmargin=8 " wrap lines when coming within n characters from side
set linebreak " set soft wrapping
set showbreak=… " show ellipsis at breaking

set autoindent " automatically set indent of new line
set smartindent

"------------------------------------------------------------------------------
" Files, Backups and Undo:
"------------------------------------------------------------------------------

"set nobackup
"set nowritebackup
"set noswapfile
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


"------------------------------------------------------------------------------
" StatusLine:
"------------------------------------------------------------------------------

set laststatus=2 " show the satus line all the time

"------------------------------------------------------------------------------
" Mappings:
"------------------------------------------------------------------------------
" General mappings/shortcuts for functionality
" Additional, plugin-specific mappings are located under
" the plugins section

" Close the current buffer
" noremap <C-x> :q<cr>

" remap esc
inoremap jk <esc>

" markdown to html
nmap <leader>md :%!markdown --html4tags <cr>

" remove extra whitespace
nmap <leader><space> :%s/\s\+$<cr>

" wipout buffer
nmap <silent> <leader>b :bw<cr>

" shortcut to save
nmap <leader>, :w<cr>

" disable Ex mode
noremap Q <NOP>

" set paste toggle
set pastetoggle=<F6>

" toggle paste mode
map <leader>v :set paste!<cr>

" edit ~/.vimrc
"map <leader>ev :e! ~/.vimrc<cr>
" edit vim plugins
"map <leader>evp :e! ~/.vim/plugins.vim<cr>
" edit vim functions
"map <leader>evf :e! ~/.vim/functions.vim<cr>
" edit gitconfig
"map <leader>eg :e! ~/.gitconfig<cr>

" clear highlighted search
noremap <space> :set hlsearch! hlsearch?<cr>

" activate spell-checking alternatives
nmap ;s :set invspell spelllang=en<cr>

" toggle invisible characters
set invlist
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
highlight SpecialKey ctermbg=none " make the highlighting of tabs less annoying
set showbreak=↪
nmap <leader>l :set list!<cr>

" Textmate style indentation
vmap <leader>[ <gv
vmap <leader>] >gv
nmap <leader>[ <<
nmap <leader>] >>

" switch between current and last buffer
nmap <leader>. <c-^>

" enable . command in visual mode
vnoremap . :normal .<cr>

map <silent> <C-h> :call WinMove('h')<cr>
map <silent> <C-j> :call WinMove('j')<cr>
map <silent> <C-k> :call WinMove('k')<cr>
map <silent> <C-l> :call WinMove('l')<cr>

map <leader>wc :wincmd q<cr>

" toggle cursor line
nnoremap <leader>i :set cursorline!<cr>

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" moving up and down work as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> ^ g^
nnoremap <silent> $ g$

" search for word under the cursor
nnoremap <leader>/ "fyiw :/<c-r>f<cr>

" inoremap <tab> <c-r>=Smart_TabComplete()<CR>

map <leader>r :call RunCustomCommand()<cr>
" map <leader>s :call SetCustomCommand()<cr>
let g:silent_custom_command = 0

" helpers for dealing with other people's code
nmap \t :set ts=4 sts=4 sw=4 noet<cr>
nmap \s :set ts=4 sts=4 sw=4 et<cr>

nmap <leader>w :setf textile<cr> :Goyo<cr>

"------------------------------------------------------------------------------
" Functions:
"------------------------------------------------------------------------------

" Window movement shortcuts
" move to the window in the direction shown, or create a new window
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

" recursively search up from dirname, sourcing all .vimrc.local files along the way
function! ApplyLocalSettings(dirname)
    " convert windows paths to unix style
    let l:curDir = substitute(a:dirname, '\\', '/', 'g')

    " walk to the top of the dir tree
    let l:parentDir = strpart(l:curDir, 0, strridx(l:curDir, '/'))
    if isdirectory(l:parentDir)
        call ApplyLocalSettings(l:parentDir)
    endif

    " now walk back down the path and source .vimsettings as you find them.
    " child directories can inherit from their parents
    let l:settingsFile = a:dirname . '/.vimrc.local'
    if filereadable(l:settingsFile)
        exec ':source' . l:settingsFile
    endif
endfunction

" smart tab completion
function! Smart_TabComplete()
    let line = getline('.')                         " current line

    let substr = strpart(line, -1, col('.')+1)      " from the start of the current
    " line to one character right
    " of the cursor
    let substr = matchstr(substr, '[^ \t]*$')       " word till cursor
    if (strlen(substr)==0)                          " nothing to match on empty string
        return '\<tab>'
    endif
    let has_period = match(substr, '\.') != -1      " position of period, if any
    let has_slash = match(substr, '\/') != -1       " position of slash, if any
    if (!has_period && !has_slash)
        return '\<C-X>\<C-P>'                         " existing text matching
    elseif ( has_slash )
        return '\<C-X>\<C-F>'                         " file matching
    else
        return '\<C-X>\<C-O>'                         " plugin matching
    endif
endfunction

" execute a custom command
function! RunCustomCommand()
    up
    if g:silent_custom_command
        execute 'silent !' . s:customcommand
    else
        execute '!' . s:customcommand
    endif
endfunction

function! SetCustomCommand()
    let s:customcommand = input('Enter Custom Command$ ')
endfunction

function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

function! HiInterestingWord(n)
    " Save our location.
    normal! mz

    " Yank the current word into the z register.
    normal! "zyiw

    " Calculate an arbitrary match ID.  Hopefully nothing else is using it.
    let mid = 86750 + a:n

    " Clear existing matches, but don't worry if they don't exist.
    silent! call matchdelete(mid)

    " Construct a literal pattern that has to match at boundaries.
    let pat = '\V\<' . escape(@z, '\') . '\>'

    " Actually match the words.
    call matchadd("InterestingWord" . a:n, pat, 1, mid)

    " Move back to our original location.
    normal! `z
endfunction

"nnoremap <silent> <leader>1 :call HiInterestingWord(1)<cr>
"nnoremap <silent> <leader>2 :call HiInterestingWord(2)<cr>
"nnoremap <silent> <leader>3 :call HiInterestingWord(3)<cr>
"nnoremap <silent> <leader>4 :call HiInterestingWord(4)<cr>
"nnoremap <silent> <leader>5 :call HiInterestingWord(5)<cr>
"nnoremap <silent> <leader>6 :call HiInterestingWord(6)<cr>

"hi def InterestingWord1 guifg=#000000 ctermfg=16 guibg=#ffa724 ctermbg=214
"hi def InterestingWord2 guifg=#000000 ctermfg=16 guibg=#aeee00 ctermbg=154
"hi def InterestingWord3 guifg=#000000 ctermfg=16 guibg=#8cffba ctermbg=121
"hi def InterestingWord4 guifg=#000000 ctermfg=16 guibg=#b88853 ctermbg=137
"hi def InterestingWord5 guifg=#000000 ctermfg=16 guibg=#ff9eb8 ctermbg=211
"hi def InterestingWord6 guifg=#000000 ctermfg=16 guibg=#ff2c4b ctermbg=195

function! HtmlUnEscape()
  silent s/&lt;/</eg
  silent s/&gt;/>/eg
  silent s/&amp;/\&/eg
endfunction

nnoremap <silent> <leader>u :call HtmlUnEscape()<cr>


"------------------------------------------------------------------------------
" Plugins:
"------------------------------------------------------------------------------

" close NERDTree after a file is opened
"let g:NERDTreeQuitOnOpen=0
" show hidden files in NERDTree
"let NERDTreeShowHidden=1
" remove some files by extension
"let NERDTreeIgnore = ['\.js.map$']
" Toggle NERDTree
"nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
"nmap <silent> <leader>y :NERDTreeFind<cr>

" map fuzzyfinder (CtrlP) plugin
" nmap <silent> <leader>t :CtrlP<cr>
nmap <silent> <leader>r :CtrlPBuffer<cr>
let g:ctrlp_map='<leader>t'
let g:ctrlp_dotfiles=1
let g:ctrlp_working_path_mode = 'ra'

" Fugitive Shortcuts
" nmap <silent> <leader>gs :Gstatus<cr>
" nmap <leader>ge :Gedit<cr>
" nmap <silent><leader>gr :Gread<cr>
" nmap <silent><leader>gb :Gblame<cr>

" nmap <leader>m :MarkedOpen!<cr>
" nmap <leader>mq :MarkedQuit<cr>

" Toggle Limelight:
"nmap <leader>f :Limelight!!<cr>

" Neomake Configuration:
let g:neomake_javascript_jshint_maker = {
    \ 'args': ['--verbose'],
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
\ }
let g:neomake_javascript_enabled_markers = ['jshint', 'jscs']

" CtrlP ignore patterns
" let g:ctrlp_custom_ignore = {
"             \ 'dir': '\.git$\|node_modules$\|bower_components$\|\.hg$\|\.svn$',
"             \ 'file': '\.exe$\|\.so$'
"             \ }
" only show files that are not ignored by git
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" search the nearest ancestor that contains .git, .hg, .svn
let g:ctrlp_working_path_mode = 2

" airline options
let g:airline_powerline_fonts=1
" let g:airline_left_sep=''
" let g:airline_right_sep=''
let g:airline_theme='base16'
" don't hide quotes in json files
let g:vim_json_syntax_conceal = 0
let g:SuperTabCrMapping = 0


"------------------------------------------------------------------------------
" DBExt Profiles:
"------------------------------------------------------------------------------

" MySQL - Gradesfirst
"let g:dbext_default_profile_mysql_gradesfirst="type=MYSQL:user=root:passwd=:dbname=gradesfirst:host=192.168.33.10"
"let g:dbext_default_profile_mysql_gradesfirst_test="type=MYSQL:user=root:passwd=:dbname=gradesfirst_test:host=192.168.33.10"

" MySQL - Querium
"let g:dbext_default_profile_mysql_mathbooster="type=MYSQL:user=querium:passwd=:dbname=tsiprep_development"

" Default profile
"let g:dbext_default_profile="mysql_gradesfirst"


call ApplyLocalSettings(expand('.'))

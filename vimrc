" set word wrap 
set wm=10
" set textwidth
set tw=79
" don't use new lines when wrapping
:set formatoptions=l
" show line numbers
set nu
" turn off audio bell
set visualbell
" show matching brakets
set showmatch
" tab settings
set tabstop=2 expandtab 
" auto indention 
set autoindent shiftwidth=2
" let GetLatestVimScripts automatically install scripts
let g:GetLatestVimScripts_allowautoinstall=1
" set incremental search
set incsearch
" always show status bar
set laststatus=2
" it is ok to change buffers without making saves
set hidden
"highlight the line the cursor is on
set cursorline
" get programing type goodness
filetype plugin indent on
" turn on spell check
set spell spelllang=en_us 
" ignore case when searching
set ignorecase

" Pathogen (https://github.com/tpope/vim-pathogen)
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()


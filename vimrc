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
" set up delimitMate
" let delimitMate_autoclose = 1
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

" Execute open rspec buffer
" Thanks to Ian Smith-Heisters
function! RunSpec(args)
 if exists("b:rails_root") && filereadable(b:rails_root . "/script/spec")
   let spec = b:rails_root . "/script/spec"
 else
   let spec = "spec"
 end 
 let cmd = ":! " . spec . " % -fn " . a:args
 execute cmd 
endfunction
" Mappings
" run one rspec example or describe block based on cursor position
map !s :call RunSpec("-l " . <C-r>=line('.')<CR>)
" run full rspec file
map !S :call RunSpec("")
 

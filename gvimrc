" font
set guifont=Monaco:h14
" window size
set lines=60 columns=210
" turn off the toolbar
set go-=T

" Command-T mappings
if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>
endif


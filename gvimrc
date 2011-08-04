" font
set guifont=Monaco:h14
" window size
set lines=55 columns=155
" turn off the toolbar
set go-=T
" turn off scrollbars
set guioptions-=L
set guioptions-=r

" solorized color scheme
set background=light
colorscheme solarized

" Command-T mappings
if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>
endif


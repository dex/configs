set guioptions-=m  "Disable menu
set guioptions-=T  "Disable toolbar
"set guifont=Inconsolata\ 12
"set guifont=Consolas\ 11
if has("gui_macvim")
	set guifont=Monaco\ for\ Powerline:h12
	set transparency=5
else
	set guifont=Monaco\ 11
	"set guifont=Menlo\ 10
	"set guifont=Inconsolata\ 12
endif
"map <F3> <ESC>:set guifont=Inconsolata\ 11<CR>
"map <F4> <ESC>:set guifont=Inconsolata\ 12<CR>

" Set the color schema
"let g:solarized_contrast="high"    	"default value is normal
"let g:solarized_visibility="high"    	"default value is normal
"let g:solarized_hitrail=1    		"default value is 0
set background=dark
colors solarized

set columns=80
set lines=24

" [ Vundle ] {{{1
set nocompatible	" be iMproved, required

" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
	echo "Installing Vundle..."
	echo ""
	silent !mkdir -p ~/.vim/bundle
	silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	let iCanHazVundle=0
endif

filetype off		" required
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'
" {Addon}
Plugin 'vimwiki/vimwiki'
Plugin 'calendar.vim--Matsumoto'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'majutsushi/tagbar'
Plugin 'benmills/vimux'
Plugin 'csexton/jekyll.vim'
Plugin 'bling/vim-airline'
Plugin 'easymotion/vim-easymotion'
" {Look and Feel}
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-vividchalk'
Plugin 'drmikehenry/vim-fontsize'
Plugin 'fatih/molokai'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'Matt-Deacalion/vim-systemd-syntax'
Plugin 'nanotech/jellybeans.vim'
Plugin 'aftersyntaxc.vim'
Plugin 'aklt/plantuml-syntax'
Plugin 'plasticboy/vim-markdown'
" {Programming}
Plugin 'a.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'JazzCore/ctrlp-cmatcher'
"Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'nixprime/cpsm'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/syntastic'
" {Formating}
Plugin 'godlygeek/tabular'
Plugin 'DrawIt'
Plugin 'rhysd/vim-clang-format'
Plugin 'DoxygenToolkit.vim'
" {Auto-completion}
"Plugin 'Valloric/YouCompleteMe'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'thiblahute/gobject-snippets'
" {Haskell}
"Plugin 'bitc/lushtags'
"Plugin 'lukerandall/haskellmode-vim'
"Plugin 'kana/vim-filetype-haskell'
"Plugin 'Twinside/vim-haskellFold'
"Plugin 'Twinside/vim-hoogle'
"Plugin 'eagletmt/neco-ghc'
" {Go}
Plugin 'fatih/vim-go'
" {Lua}
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-ftplugin'
" {My Plugin}
Plugin 'dex/p4.vim'
Plugin 'dex/vim-slog'

call vundle#end()		"required

" Install plugins the first time vim runs
if iCanHazVundle == 0
	echo "Installing Bundles, please ignore key map error messages"
	echo ""
	PluginInstall
endif

filetype plugin indent on	"required

" [ Genernal setting ] {{{1
set foldmethod=marker
set autoindent
set cindent
set cinoptions=(0
set smarttab
set enc=taiwan
set fileencoding=taiwan
set hls
set ruler
syntax on
highlight Search term=reverse ctermbg=4 ctermfg=7
"set listchars=tab:>-,trail:-,eol:$,nbsp:%,extends:>,precedes:<
"set showbreak=↪

" mouse
if &term != "builtin_gui"
	set mouse=a
	set ttymouse=sgr
endif

" encodings
set fileencoding=utf-8
set fileencodings=utf-8,big5,ucs-bom,gbk,latin1
"set ffs=unix,dos
"set ff=unix
set encoding=utf-8
set termencoding=utf-8

" tab setup
au BufRead,BufNewFile *.py set ts=4 sw=4 et
au BufRead,BufNewFile *.c,*.cc,*.C,*.h set ts=4 sw=4 et

" Set color column
"au FileType c,cpp,python,vim,sh,go setlocal colorcolumn=80 list

" Co-existed with tmux
if &term =~ '^screen'
	execute "set <xUp>=\e[1;*A"
	execute "set <xDown>=\e[1;*B"
	execute "set <xRight>=\e[1;*C"
	execute "set <xLeft>=\e[1;*D"
endif

" list
"set list
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\ 

" [ Rebuild tags ] {{{1
nmap <F5> :!uptag<CR>

" [ Cscope ] {{{1
if has("cscope")
	set csprg=cscope
	set csto=0
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
	    cs add cscope.out
	" else add database pointed to by environment
	elseif $CSCOPE_DB != ""
	    cs add $CSCOPE_DB
	endif
	set csverb
endif
function! LoadCscope()
	let db = findfile("cscope.out", ".;")
	if (!empty(db))
		let path = strpart(db, 0, match(db, "/cscope.out$"))
		if (!empty(path) && path[0] != '/')
			let path = getcwd() . '/' . path
		endif
		set nocscopeverbose " suppress 'duplicate connection' error
		exe "cs add " . db . " " . path
		set cscopeverbose
	endif
endfunction
au BufEnter * call LoadCscope()
nmap <Leader>\s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>\g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>\c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>\t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>\e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>\f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <Leader>\i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <Leader>\d :cs find d <C-R>=expand("<cword>")<CR><CR>
set cscopequickfix=s-,c-,d-,i-,t-,e-
"let g:SuperTabRetainCompletionType=2
"let g:SuperTabDefaultCompletionType="<C-X><C-O>"
nmap <S-F12> :copen<CR>
nmap <S-F11> :cclose<CR>
nmap <S-CR> :cc<CR>
nmap <S-Up> :cp<CR>
nmap <S-Down> :cn<CR>
nmap <S-Left> :cold<CR>
nmap <S-Right> :cnew<CR>
nmap <C-MiddleMouse> <LeftMouse>:cs find s <C-R>=expand("<cword>")<CR><CR>

" [ ultisnips ] {{{1
" Trigger configuration. Do not use <tab> if you use YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<c-tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
	if pumvisible()
	    return "\<C-n>"
	else
	    call UltiSnips#JumpForwards()
	    if g:ulti_jump_forwards_res == 0
		return "\<TAB>"
	    endif
	endif
    endif
    return ""
endfunction
au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"
set completeopt=longest,menu

" [ NERD Tree ] {{{1
let g:NERDTreeWinPos = "left"
let g:NERDTreeWinSize = 35
"let g:NERDTreeShowBookmarks = 1
map <F7> :NERDTreeToggle<CR>
map <F2> cd<F5>Pcd:cs r<CR>
function! TryNTFind()
	if !exists("t:NERDTreeBufName") 
	elseif bufwinnr(t:NERDTreeBufName) == -1 
	elseif !empty(&buftype) 
	elseif empty(bufname("%"))
	elseif bufname("%") == t:NERDTreeBufName
	else
		try | NERDTreeFind % | catch | wincmd p | return | endtry
		exec bufwinnr(t:NERDTreeBufName)."wincmd w"
		exec "normal zz"
		wincmd p
	endif
endfunction
autocmd BufWinEnter,WinEnter * call TryNTFind()

" [ Tagbar ] {{{1
let g:tagbar_left = 0
"let g:tagbar_expand = 1
"let g:tagbar_width = 35
highlight link TagbarSignature helpNote
map <F8> :TagbarToggle<CR>

" [ airline ] {{{1
set t_Co=256
set laststatus=2
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" old vim-powerline symbols
"let g:airline_left_sep = '⮀'
"let g:airline_left_alt_sep = '⮁'
"let g:airline_right_sep = '⮂'
"let g:airline_right_alt_sep = '⮃'
"let g:airline_symbols.branch = '⭠'
"let g:airline_symbols.readonly = '⭤'
"let g:airline_symbols.linenr = '⭡'
" new vim-powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

" [ CtrlP ] {{{1
let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_cmd = 'exe "CtrlP".get(["", "BookmarkDir", "Buffer", "MRU", "BufTag"], v:count)'
let g:ctrlp_working_path_mode = '0'
let g:ctrlp_max_files = 0
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = '\v[\/]buildroot[\/](tools|toolchain|build)$'
"let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
"let g:ctrlp_match_func = {'match' : 'pymatcher#PyMatch' }
"let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
let g:cpsm_match_empty_query = 0
"let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
nmap <Leader>\1 :CtrlPBookmarkDir<CR>
nmap <Leader>\2 :CtrlPBuffer<CR>
nmap <Leader>\3 :CtrlPMRUFiles<CR>
nmap <Leader>\4 :CtrlPBufTag<CR>

" [ ColorSchema ] {{{1
set background=dark
"colors solarized
"colors molokai
"colors jellybeans
colors default
" Set background transparent for molokai theme
"hi Normal ctermfg=252 ctermbg=none guifg=#F8F8F2 guibg=#1B1D1E

" [ Vimux ] {{{1
map <Leader>\a :VimuxRunLastCommand<CR>
map <Leader>\l :VimuxRunLastCommand<CR>
map <Leader>\r :VimuxPromptCommand<CR>
map <Leader>\p :VimuxPromptCommand<CR>
map <Leader>\q :VimuxCloseRunner<CR>

" [ MyIDE ] {{{1
let g:isResized=0
map <F12> :NERDTreeToggle<CR>:TagbarToggle<CR>:copen 8<CR>2<C-w>w
function! OpenIDE(proj)
	set cursorline
	set number
	set relativenumber
	if &term !~ "screen*" && g:isResized == 0
		set columns=175
		set lines=50
		let g:isResized=1
	endif
	if a:proj == ""
		execute "normal \<F12>"
	elseif isdirectory(a:proj)
		lcd `=a:proj`
		execute "normal \<F12>"
	else
		execute "normal 1\<C-P>".a:proj."\<C-V>\<F12>"
	endif
endfunction
command -nargs=? -complete=file Ide call OpenIDE(<q-args>)
command -nargs=? -complete=file Proj call OpenIDE(<q-args>)
nmap <Leader>\[ :NERDTreeToggle<CR>
nmap <Leader>\] :TagbarToggle<CR>
nmap <Leader>\_ :copen 8<CR>
autocmd FileType qf wincmd J

" [ vimwiki ] {{{1
let g:vimwiki_list = [{
 \ 'path': '~/Documents/vimwiki/',
 \ 'path_html': '~/public_html/',
 \ 'diary_rel_path' : '.',
 \ 'template_path': '~/Documents/vimwiki/templates/',
 \ 'template_default': 'default',
 \ 'template_ext': '.html',
 \ 'auto_export': 1,
 \ 'nested_syntaxes': {'python': 'python', 'bash': 'sh', 'c++': 'cpp', 'diff': 'diff'}
 \ }]
nmap <leader>t <Plug>VimwikiToggleListItem
au FileType vimwiki set sw=2 et foldmethod=manual

" [ Jekyll ] {{{1
au BufRead,BufNewFile *.md set ft=markdown
let g:jekyll_path = "~/Develop/dex.github.io"
let g:jekyll_post_suffix = "md"
let g:jekyll_prompt_tags = "true"
let g:jekyll_prompt_categories = "true"

" [ p4.vim ] {{{1
let g:P4UseTab = 1

" [ Haskell mode ] {{{1
au BufEnter *.hs compiler ghc
let g:haddock_browser="/usr/bin/google-chrome"
let g:haskellmode_completion_ghc=0
let g:haskellmode_completion_haddock=0
let g:haddock_indexfiledir=$HOME."/.vim/"

" [ YCM ] {{{1
"let g:ycm_key_list_select_completion = ['\<C-TAB>', '\<Down>']
"let g:ycm_key_list_previous_completion = ['\<C-S-TAB>', '\<Up>']
let g:ycm_semantic_triggers = {'haskell' : ['.']}
let g:ycm_global_ycm_extra_conf = $HOME."/.vim/ycm_extra_conf.py"
let g:ycm_extra_conf_vim_data=['getcwd()']

" [ neco-ghc ] {{{1
au BufRead,BufNewFile *.hs setlocal omnifunc=necoghc#omnifunc
let g:necoghc_enable_detailed_browse = 1

" [ vim-go ] {{{1
au FileType go nmap <leader>gb <Plug>(go-build)
au FileType go nmap <leader>gi <Plug>(go-install)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>gr <Plug>(go-run)
au FileType go nmap <leader>gd <Plug>(go-def-split)
let g:go_list_type = 'quickfix'
let g:go_list_height = 8
let g:go_list_autoclose = 0

" [ vim-lua-ftplugin ] {{{1
let g:lua_complete_omni = 1
let g:lua_compiler_name = '/usr/bin/luac'
" [ plantuml ] {{{1
let g:plantuml_executable_script = '/usr/bin/google-chrome'

" Make external commands work through a pipe instead of a pseudo-tty
"set noguipty

" You can also specify a different font, overriding the default font
"if has('gui_gtk2')
"  set guifont=Bitstream\ Vera\ Sans\ Mono\ 12
"else
"  set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1
"endif

" If you want to run gvim with a dark background, try using a different
" colorscheme or running 'gvim -reverse'.
" http://www.cs.cmu.edu/~maverick/VimColorSchemeTest/ has examples and
" downloads for the colorschemes on vim.org

set encoding=utf8
set langmenu=zh_CN.UTF-8
set imcmdline
set cursorline                  "Highlight background of current line

" Show tabs and newline characters with ,s
nmap <Leader>s :set list!<CR>
set listchars=tab:▸\ ,eol:¬
"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" 隐藏工具栏
set guioptions-=T
set guioptions-=m

" 水平滚动条
set guioptions+=b

set colorcolumn=80

set background=dark

" Set colorscheme and add minibufexpl colors
function ColorScheme(cs)
    execute 'colorscheme ' . a:cs
    " MiniBufExpl Colors
    " hi MBEVisibleActive guifg=#A6DB29 guibg=fg
    " hi MBEVisibleChangedActive guifg=#F1266F guibg=fg
    " hi MBEVisibleChanged guifg=#F1266F guibg=fg
    " hi MBEVisibleNormal guifg=#5DC2D6 guibg=fg
    " hi MBEChanged guifg=#CD5907 guibg=fg
    hi MBENormal guifg=#ffffff guibg=fg
endfunction

call ColorScheme('tir_black')

" Source a global configuration file if available
if filereadable($HOME.'/.gvimrc_local')
  source $HOME/.gvimrc_local
endif


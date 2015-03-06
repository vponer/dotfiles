"---------------------------------------------------------------------------
" mkdir -p ~/.vim/bundle
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" open vim
" type :BundleUpdate to install bundles
"
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-rails'
Plugin 'plasticboy/vim-markdown'
Plugin 'jamestomasino/actionscript-vim-bundle'
Plugin 'ingydotnet/yaml-vim'
Plugin 'elzr/vim-json'
Plugin 'thinkjs/vim-coloresque'
Plugin 'msmorgan/vim-flex'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'Rip-Rip/clang_complete'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
"Plugin 'justmao945/vim-clang'
"Plugin 'rhysd/vim-clang-format'

Plugin 'bling/vim-airline'
"Plugin 'edkolev/tmuxline.vim'
"Plugin 'edkolev/promptline.vim'
"Plugin 'itchyny/lightline.vim'

"Plugin 'kien/ctrlp.vim'
"Plugin 'Shougo/unite.vim'
"Plugin 'majutsushi/tagbar'
Plugin 'chrisbra/csv.vim'
"Plugin 'scrooloose/syntastic'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'mhinz/vim-signify'
"Plugin 'jmcantrell/vim-virtualenv'

"Plugin 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'chase/vim-ansible-yaml'
"Plugin 'tangledhelix/vim-octopress'
"Plugin 'majutsushi/tagbar'
"Plugin 'megaannum/vimside'
call vundle#end()
filetype plugin indent on
cnoreabbrev ntt NERDTreeToggle

let g:vim_markdown_folding_disabled=1
let g:vim_markdown_no_default_key_mappings=1

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup
syntax on

" Configuration file for vim
"set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
set modeline
set modelines=5

"language en
if has("multi_byte")
	set encoding=utf-8
	setglobal fileencoding=big5
	set fileencoding=big5
	set bomb
	set termencoding=utf-8
	set fileencodings=ucs-bom,big5,utf-8,gbk,latin1
else
	echoerr "Sorry, this version of (g)vim was not compiled with multi_byte"
endif

"au BufNewFile,BufRead *.as set filetype=actionscript
"au BufNewFile,BufRead *.mxml set filetype=mxml
"au BufNewFile,BufRead *.wiki set filetype=Wikipedia
autocmd! BufNewFile,BufRead *.raml set filetype=yaml

source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim

set cindent
"set smartindent
"set cursorcolumn
"set cursorline
"set directory=$HOME/tmp
set hlsearch
set laststatus=2
set nobackup
"set number
set ruler
set secure
"set showcmd
set showmatch
set statusline=%t%m%r%h%w\ [FORMAT=%{&ff}]\ [ENC=%{strlen(&fenc)?&fenc:'none'}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set errorbells
set visualbell
set nowarn
"set wrap
"set lbr
set bg=dark
"set spell spelllang=en_us

syntax on
filetype plugin indent on

behave xterm
set t_Co=256
"colorscheme ir_black
colorscheme koehler
"set fillchars=vert:\ ,fold:\ " 

" turn off useless toolbar
set guioptions-=T
" turn off menu-bar
set guioptions-=m
" turn off mouse visual mode
set mouse=

"set showtabline=2

hi clear SpellBad
hi SpellBad term=underline cterm=underline ctermfg=red

"set guifont=DejaVu_Sans_Mono:h12:cANSI
"set guifont=Consolas:h20
"set guifont=Monaco:h18
"set guifont=Consolas:h12:w7
"set guifont=Courier_New:h14:w7
set guifont=Brush_Script_MT:h18
set guifont=Comic_Sans_MS:h16
set guifont=Impact:h16
set guifont=Hannotate_TC:h18
"set guifont=Chiller:h18

highlight LineNr guifg=#ffffff guibg=#446699

if has('multi_byte_ime')
  highlight Cursor guibg=Purple guifg=NONE
  highlight CursorIM guibg=Green guifg=NONE
endif

" Add highlighting for function definition in C++
function! EnhanceCppSyntax()
    syn match cppFuncDef "::\~\?\zs\h\w*\ze([^)]*\()\s*\(const\)\?\)\?$"
    hi def link cppFuncDef Special
endfunction 

function! SetDevelopEnvironment()
    set ts=4
    set sw=4
    set sts=4
    set smarttab
    set expandtab
    set autoindent
endfunction

function! SetRubyDevelopEnvironment()
    set ts=2
    set sw=2
    set sts=2
    set smarttab
    set expandtab
    set autoindent
endfunction

autocmd Syntax cpp call EnhanceCppSyntax()
autocmd Syntax objcpp call EnhanceCppSyntax()
autocmd Syntax c call SetDevelopEnvironment()
autocmd Syntax cpp call SetDevelopEnvironment()
autocmd Syntax objcpp call EnhanceCppSyntax()
autocmd Syntax actionscript call SetDevelopEnvironment()
autocmd Syntax mxml call SetDevelopEnvironment()
autocmd Syntax xml call SetDevelopEnvironment()
autocmd Syntax ant call SetDevelopEnvironment()
autocmd Syntax ruby call SetRubyDevelopEnvironment()
autocmd Syntax yaml call SetRubyDevelopEnvironment()

highlight StatusLine ctermfg=231 ctermbg=236 guifg=#ffffff guibg=#303030
highlight StatusLineNC ctermfg=103 ctermbg=236 guifg=#8787af guibg=#303030

" using vim as c/cpp ide
" http://www.alexeyshmalko.com/2014/using-vim-as-c-cpp-ide/
"set exrc
"set secure
"set colorcolumn=100
"highlight ColorColumn ctermbg=darkgray
augroup project
	autocmd!
	autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END
let &path.="src/include,/usr/include/AL,"
set includeexpr=substitute(v:fname,'\\.','/','g')
set noundofile

let g:airline#extensions#tabline#enabled = 1


syntax on

set hidden
set wildmenu
set showcmd
" set hlsearch

set laststatus=2
" set visualbell

set mouse=a
set number
set pastetoggle=<F11>
set clipboard=unnamed

let mapleader = "'"
vnoremap <Leader>s :sort<CR>

vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/
" nnoremap <C-L> :nohl<CR><C-L>
set t_Co=256
 color wombat256mod
"color twilight
"color distinguished
filetype indent plugin on
let $Tlist_Ctags_Cmd='/usr/local/bin/ctags'
map T :TaskList<CR>
map P :TlistToggle<CR>
autocmd FileType python set omnifunc=pythoncomplete#Complete
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

set history=700
set undolevels=700

" Setup Pathogen to manage your plugins.
call pathogen#infect()

" settings for ctrlp
" cd ~/.vim/bundle
" git clone git://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" Settings for python-mode
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
map <Leader>b 0import ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Better navigation through omnicomplete option list
set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

set nofoldenable


set hidden
set hlsearch
set showcmd
set wildmenu

set laststatus=2
" set visualbell

set bs=2
set clipboard=unnamed
set mouse=a
set number
set pastetoggle=<F11>

let mapleader = "'"
vnoremap <Leader>s :sort<CR>

vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" for pathogen file type should be off before setting it
" Setup Pathogen to manage your plugins.
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()

" Color schemes
"" The time is modified after every write
"" autocmd Bufwritepre,BufNewFile *.py exe "1," . 10 . "g/Last Modified:.*/s/Last Modified:.*/Last Modified:" .strftime("%c")
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/
" nnoremap <C-L> :nohl<CR><C-L>
set t_Co=256
 color xoria256
" color synic
" color wombat256mod
" color twilight
" color distinguished

" Highlight sections of a line that crosses 120 characters
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
augroup END


" ctags
let $Tlist_Ctags_Cmd='/usr/local/bin/ctags'
map T :TaskList<CR>
map P :TlistToggle<CR>


" syntax highlighting and validation
syntax on
filetype on
filetype indent plugin on

" Python settings
autocmd FileType python set omnifunc=pythoncomplete#Complete
"supertab plugin
let g:SuperTabDefaultCompletionType = "context"
au BufNewFile *.py so ~/.vim/skeleton/py
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

set history=700
set undolevels=700

" code folding
set foldmethod=indent
set foldlevel=99

" settings for ctrlp
" cd ~/.vim/bundle
" git clone git://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" Gundo plugin for diff's between saves
map <leader>g :GundoToggle<CR>

" Settings for python-mode
map <Leader>j :RopeGotoDefinition<CR>
map <Leader>r :RopeRename<CR>
let ropevim_enable_shortcuts = 1

" settings for pymode
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_auto_project = 1
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_lint = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
map <Leader>b 0import ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Better navigation through omnicomplete option list
set completeopt=longest,menuone,preview
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

" Remove Text Background color,  good for transparent terminals
hi Normal ctermbg=NONE




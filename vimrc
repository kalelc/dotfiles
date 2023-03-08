" #### config tabs and space by files ###"
" tabstop: Number of spaces a tab counts for
" shiftwidth: Width to shift on indent operations
" expandtab: Use space instead of tabs in insert-mode

set nocompatible
set smartindent
set autoindent
set smarttab
set showmatch
set number
set keywordprg=:help                " Command to execute with `K`
set hlsearch
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir
set autowrite
set splitright

let mapleader = "\<Space>"

" tab shortcut
"
" open new tab
:nnoremap <C-S-t> :tabnew<CR>
:inoremap <C-S-t> <Esc>:tabnew<CR>
:inoremap <C-S-w> <Esc>:tabclose<CR>

" navigate between tabs H:right, L:left
:nnoremap H gT
:nnoremap L gt

" basic file operation
:nnoremap <Leader>w :w<CR>
:nnoremap <Leader>wq :wq<CR>
:nnoremap <Leader>wqa :wqa<CR>

" get image code source in visual mode
vnoremap <Leader>4 :CarbonNowSh<CR>

syntax on

filetype indent on

" Enable filetype plugins
filetype plugin on

" ### set filetypes ###

autocmd FileType html        setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType css         setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType scss        setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType javascript  setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType python      setlocal shiftwidth=4 tabstop=4 expandtab

autocmd FileType go          setlocal shiftwidth=4 tabstop=4
autocmd FileType ruby        setlocal shiftwidth=2 tabstop=2 expandtab

autocmd FileType eruby       setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType yaml        setlocal shiftwidth=2 tabstop=2 expandtab

" Auto completes
iab _email andreskal@gmail.com

" ### higlights ###

" angle-brackets
set matchpairs+=<:>

" extraspaces
highlight ExtraWhitespace ctermbg=1 guibg=red
highlight Cursor guifg=white
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" set tags+=.git/tags;.tags           " Store tags with each project
set foldmethod=indent               " Fold by indentation-level
set foldnestmax=3                   " Number of nested folds
set nofoldenable                    " Don´t fold when opening files

" ### Vundle plugins ###
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Lint Engine
Plugin 'w0rp/ale'

" Golang
Plugin 'fatih/vim-go'

" Bottom Status bar
Plugin 'vim-airline/vim-airline'

" Syntax checking
Plugin 'vim-syntastic/syntastic'

" git diff higlights
Plugin 'airblade/vim-gitgutter'

" theme
Plugin 'morhetz/gruvbox'

" screenshot code
Plugin 'kristijanhusak/vim-carbon-now-sh'

call vundle#end()

" configure new theme
autocmd vimenter * colorscheme gruvbox
set background=dark 

" syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Ruby ALE configuratiton

let g:ale_linters = { 'ruby': ['rubocop'], 'go': ['gopls'] }
let g:ale_linters_explicit = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 1

" golang
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_fields = 1
let g:go_highlight_function_call = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 0
let g:go_fmt_autosave = 1
let g:go_play_open_browser = 1 ":Goplay
let g:go_addtags_transform = "camelcase"
let g:go_play_browser_command = "chrome"
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" golang mappers
autocmd FileType go          nmap <leader>b  <Plug>(go-build)
autocmd FileType go          nmap <leader>r  <Plug>(go-run)
autocmd FileType go          nmap <leader>f  <Plug>(go-imports)
autocmd FileType go          nmap <leader>t  <Plug>(go-test)
autocmd FileType go          nmap <Leader>c <Plug>(go-coverage-toggle)
autocmd FileType go          nmap <leader>a :cclose<CR>

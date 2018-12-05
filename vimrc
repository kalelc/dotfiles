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

syntax on

filetype indent on

" Enable filetype plugins
filetype plugin on

" ### set filetypes ###

autocmd FileType html        setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType css         setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType javascript  setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType python      setlocal shiftwidth=4 tabstop=4 expandtab

autocmd FileType go          setlocal shiftwidth=4 tabstop=4
autocmd FileType go          nmap <leader>b  <Plug>(go-build)
autocmd FileType go          nmap <leader>r  <Plug>(go-run)
autocmd FileType go          nmap <leader>f  <Plug>(go-imports)
autocmd FileType go          nmap <leader>t  <Plug>(go-test)
autocmd FileType go          nmap <Leader>c <Plug>(go-coverage-toggle)

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
Plugin 'scrooloose/syntastic'

" Golang
Plugin 'fatih/vim-go'

" Javascript
Plugin 'pangloss/vim-javascript'

" Bottom Status bar
Plugin 'vim-airline/vim-airline'

" python
Plugin 'cburroughs/pep8.py'

" git diff higlights
Plugin 'airblade/vim-gitgutter'

" Cheat.sh
Plugin 'dbeniamine/cheat.sh-vim'

" Code Smell to Ruby
Plugin 'rainerborene/vim-reek'

call vundle#end()

" syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" active to show errors
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_ruby_checkers = ['rubocop', 'mri']
let g:syntastic_ruby_rubocop_exec = "~/.rbenv/shims/rubocop"
let g:syntastic_ruby_exec = "~/.rbenv/shims/ruby"
let g:syntastic_html_checkers = ['w3']

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
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "5s"

" Reek
let g:reek_on_loading = 0
let g:reek_always_show = 1

" React JSX
let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1
let g:xml_syntax_folding = 1

set autowrite
" cheat.sh

let  g:CheatSheetProviders = ['syntastic', 'quickfix']

" python
let g:syntastic_python_checkers = ['pylint']

" javascript
let g:javascript_plugin_jsdoc = 1

call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-repeat'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'altercation/vim-colors-solarized'
" Plug 'morhetz/gruvbox'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'rking/ag.vim' " Source Coder search Plugin
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator'
"F3 Plug 'roxma/nvim-completion-manager'
Plug 'yggdroot/indentline'
Plug 'mbbill/undotree'
Plug 'airblade/vim-gitgutter'
Plug 'Chiel92/vim-autoformat'
" Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale' " Asynchronous Linting Engine
Plug 'wincent/command-t'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'majutsushi/tagbar'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/limelight.vim'
Plug 'sheerun/vim-polyglot'
" Plug 'Raimondi/delimitMate'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/denite.nvim'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'janko-m/vim-test'
Plug 'RRethy/vim-illuminate'
Plug 'inside/vim-search-pulse'
" Plug 'terryma/vim-smooth-scroll'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
"" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
" Plug 'davidhalter/jedi-vim'
" Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
call plug#end()

let g:SuperTabDefaultCompletionType = '<C-n>'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Let's save undo info!
" if !isdirectory($HOME."/.vim")
"     call mkdir($HOME."/.vim")
" endif
if !isdirectory($HOME."/.vim/undo")
    call mkdir($HOME."/.vim/undo")
endif
if !isdirectory($HOME."/.vim/swap")
    call mkdir($HOME."/.vim/swap")
endif
if !isdirectory($HOME."/.vim/backup")
    call mkdir($HOME."/.vim/backup")
endif





" Fast saving
nnoremap <LEADER>w :w!<CR>
nnoremap <LEADER>to :tabonly<CR>
nnoremap <LEADER>b :b<space>



set number
set relativenumber
set cursorline
" set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" colorscheme slate
set background=dark
colorscheme OceanicNext
" colorscheme solarized
" colorscheme iceberg
"colorscheme afterglow
set previewheight=10
set ignorecase
set smartcase
" turn off search highlight
nnoremap <LEADER><ESC> :nohlsearch<CR>
nnoremap <silent> <leader>s :set spell!<CR>
set spelllang=en
set ruler
set path+=.,,**
" set lazyredraw          " redraw only when we need to.
nnoremap <LEADER>gd :YcmCompleter GoTo<CR>
nnoremap <LEADER>gr :YcmCompleter GoToReferences<CR>
" nnoremap <LEADER>t :terminal<CR>
nnoremap <silent> <leader>sh :terminal<CR>
nnoremap <silent> \ ,
nnoremap Y y$

" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
" Linebreak on 500 characters
" set lbr
" set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set listchars=tab:\|\
set list
set dictionary+=/usr/share/dict/words
nnoremap <leader>ct :checktime<CR>
" check one time after 4s of inactivity in normal mode
set autoread
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" au CursorHold * checktime 

set foldenable
set foldlevelstart=10 " open most folds by default
set foldminlines=10
set foldnestmax=10 " 10 nested folds max
set foldmethod=indent
nnoremap <space> :



" inoremap jj <ESC>
" open ag.vim
nnoremap <leader>ag :Ag<Return>
nnoremap <leader>f :find<space>

set undofile
set undodir=~/.vim/undo/
set backup
set backupdir=~/.vim/backup/
set writebackup
set directory=~/.vim/swap/
set title
" set titleold="Terminal"
" set titlestring=%F
"" Copy/Paste/Cut
" if has('unnamedplus')
  " set clipboard=unnamed,unnamedplus
" endif
" nnoremap n nzzzv
" nnoremap N Nzzzv
" move vertically by visual line
" nnoremap j gj
nnoremap j gj
nnoremap k gk
" Tab navigation like Firefox.
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-n> :tabnew<CR>
" Buffer navigation like Firefox.
nnoremap <C-b>   :bnext<CR>
" Redraw vim screen
nnoremap <LEADER>l <C-l>
" Toggle NerdTree
nnoremap <LEADER>n :NERDTreeToggle<CR>
nnoremap <LEADER>u :UndotreeToggle<CR>
" Window Split Switching
nnoremap <C-i> <C-o>
nnoremap <C-o> <C-i>
vnoremap < <gv
vnoremap > >gv

tnoremap <ESC> <C-\><C-n>



" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


" YCM or YouCompleteMe settings
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_server_python_interpreter = '/usr/bin/python3.6' " change this according to the YcmRestartSerever Error
let g:ycm_python_binary_path = 'python3.6'
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_goto_buffer_command = 'vertical-split'


" CtrlP settings
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_match_window = 'order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" vim-airline settings
let g:airline#extensions#tabline#enabled = 1
" let g:airline_symbols_ascii = 1
let g:airline_powerline_fonts = 1
let g:airline_extensions = ['branch', 'tabline', 'quickfix', 'fugitiveline', 'hunks', 'ycm', 'ale', 'ctrlp' ]
let g:airline#extensions#tabline#tab_nr_type = 2

" indentline settings
" Vim
let g:indentLine_char = '┆'

" vim-autoformat settings
" au BufWrite * :Autoformat
noremap <leader>af :Autoformat<CR>
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
let g:formatter_yapf_style = 'pep8'

" Ale settings
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_fixers = {'python': ['isort']}
nnoremap <silent><C-k> :ALEPreviousWrap<CR>
nnoremap <silent><C-j> :ALENextWrap<CR>
" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
" You can disable this option too
" if you don't want linters to run on opening a file
" let g:ale_lint_on_enter = 0
" Write this in your vimrc file
" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1
" Check Python files with flake8 and pylint.
" let g:ale_linters = ['flake8', 'pylint']
" Fix Python files with autopep8 and yapf.
" let g:ale_fixers = ['autopep8', 'yapf']


" vim-devicons settings


" syntastic settings
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_loc_list_height = 3

" nerdcommenter settings
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1


" Denite Settings



" Vim-easymotion Settings
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
" nmap s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" " Move to word
map  <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)



" incsearch Settings
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" :h g:incsearch#auto_nohlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)



" incsearch-fuzzy.vim Settings
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)
function! s:config_fuzzyall(...) abort
  return extend(copy({
  \   'converters': [
  \     incsearch#config#fuzzy#converter(),
  \     incsearch#config#fuzzyspell#converter()
  \   ],
  \ }), get(a:, 1, {}))
endfunction
noremap <silent><expr> z/ incsearch#go(<SID>config_fuzzyall())
noremap <silent><expr> z? incsearch#go(<SID>config_fuzzyall({'command': '?'}))
noremap <silent><expr> zg? incsearch#go(<SID>config_fuzzyall({'is_stay': 1}))



" incsearch-easymotion Settings
" incsearch.vim x fuzzy x vim-easymotion
function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzy#converter()],
  \   'modules': [incsearch#config#easymotion#module()],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction
noremap <silent><expr> <leader>/ incsearch#go(<SID>config_easyfuzzymotion())


" session management Settings
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

" " vim-smooth-scroll Settings
" noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
" noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
" noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
" noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>


" vim-search-pulse Settings
let g:vim_search_pulse_duration = 200

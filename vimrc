"Pre step
    "For show font terminal and Air-Line Plugin
        "instal for macOS
        "brew tap homebrew/cask-fonts
        "brew install font-fira-mono-nerd-font font-hack-nerd-font
        "other system https://github.com/tonsky/FiraCode/wiki/Installing
        "set font terminal settings -> Fire Code
    "For Markdown file
        "for macOS
        "brew install node
        "install livedown with node
        "npm install -g livedown

"General settings for vim 

syntax on "highlight syntax text in vim
set number relativenumber "number line in vim
set scrolloff=7 "scroll to end page
set foldcolumn=2 "Indent from the left side of the window
set colorcolumn=80 "show line column
"set textwidth=80
set hls "highlight text when searching
set ic "ignore text case when searching
set nowrap "wrap text
"set wrap linebreak nolist "wrap word break text
set nocompatible "Disable vi compatibility
set guioptions=
set showtabline=0
set cursorline

"coding file
set encoding=utf-8
set fileencodings=utf8,cp1251 
set fileformat=unix
set ffs=unix,dos,mac

"Mute sounds
set noerrorbells
set novisualbell

"not save temp file
set noswapfile
set nobackup

"SPELL
set spell "spellchecking
set spell spelllang=en,uk,ru "locale spell

" setting on tab
set expandtab "set space when pressing 'tab' key
set tabstop=4 "the number of spaces in one regular tab
set softtabstop=4 "the number of spaces in a tab when deleting
set smarttab "when you press tab at the beginning of a line, add a number of spaces equal to shiftwidth
set shiftwidth=4
set autoindent

"cursor
"Value mode mouse:
"n - normal mode;
"v - visual mode;
"i - insert mode;
"c - mode command line;
"a - all mode;
"r - for mode press 'Enter/Return' or information input.
"set mouse = "off mouse
"set mouse = a "on mouse

"mapping"
"return mode VISUAL (cloces mode INSERT)
inoremap jk <esc> 
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


"Install Vim-Plug

"UNIX
"For vim
"if empty(glob('~/.vim/autoload/plug.vim')) "if Vim-Plug not install
"  "create folder and install Vim-Plug
"  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"  "after install Vim-Plug -> run command :PlugInstall
"  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif

"For nvim
if empty(glob('~/.vim/autoload/plug.vim')) "if Vim-Plug not install
  "create folder and install Vim-Plug
  silent sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  "after install Vim-Plug -> run command :PlugInstall
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"WINDOWS
"For vim
"if empty(glob('~/.vim/autoload/plug.vim')) "if Vim-Plug not install
"  "create folder and install Vim-Plug
"  silent  ! iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
"    ni $HOME/vimfiles/autoload/plug.vim -Force
"  "after install Vim-Plug -> run command :PlugInstall
"
"  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif

"For nvim
"if empty(glob('~/.vim/autoload/plug.vim')) "if Vim-Plug not install
"  "create folder and install Vim-Plug
"  silent  !iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
"    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
"
"  "after install Vim-Plug -> run command :PlugInstall
"  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif

"Plugins for Vim-Plug
call plug#begin()

"Color scheme
Plug 'morhetz/gruvbox'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'blueshirts/darcula'
Plug 'arcticicestudio/nord-vim'
Plug 'sainnhe/sonokai'
Plug 'dracula/vim'
Plug 'NLKNguyen/papercolor-theme'

"Air-Line
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'

"File Manager
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

"NERD comentar
Plug 'scrooloose/nerdcommenter'

"multi-cursor
Plug 'terryma/vim-multiple-cursors'

"Foldang code
Plug 'tmhedberg/SimpylFold'

"Autopairs
Plug 'jiangmiao/auto-pairs'

"Work git
Plug 'tpope/vim-fugitive'

"GUI edit git
Plug 'airblade/vim-gitgutter'

"Search name file in project
Plug 'kien/ctrlp.vim'

"Search in file text (aolog grep)
Plug 'rking/ag.vim'

"Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'shime/vim-livedown'

"PYTHON
"autocomplete
Plug 'davidhalter/jedi-vim'
"formatting doc
Plug 'sbdchd/neoformat'
"Linter
Plug 'neomake/neomake'
"docstring
Plug 'pixelneo/vim-python-docstring'
"Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

filetype plugin on

"Color scheme settings
"colorscheme gruvbox
"colorscheme darcula
"set background=dark
colorscheme sonokai 

"Air-Line settings
let g:airline_powerline_fonts = 1 "enable PowerLine
let g:airline#extensions#keymap#enabled = 0 "Hide current mapping
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "cursor position
let g:Powerline_symbols='unicode' "support unicode
let g:airline#extensions#xkblayout#enabled = 0 

"Set font
set guifont=Fira\ Mono\ Regular\ Nerd\ Font\ Complete\ Mono:h16
"set guifont=Hack\ Regular\ Nerd\ Font\ Complete:h16

"NERDTree setting
"map <C-t> :NERDTreeToggle<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
"setting git
let g:NERDTreeGitStatusShowIgnored = 1 "show ignore file

"Marddown (vim-livedown)
"Preview page
nnoremap <leader>pm :LivedownToggle<CR>
"disable autofolding
let g:vim_markdown_folding_disabled = 1
"Making links like on GitLab, GitLab (without .md)
let g:vim_markdown_no_extensions_in_markdown = 1

"Neomake
" When writing a buffer (no delay).
call neomake#configure#automake('w')
" When writing a buffer (no delay), and on normal mode changes (after 750ms).
"call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing (no delay).
"call neomake#configure#automake('rw', 1000)
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 500ms; no delay when writing).
"call neomake#configure#automake('nrwi', 500)

"Setting Python
"mapping
map <C-f> :Neoformat<CR>
"disable autostart
let g:jedi#popup_on_dot = 0
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_stubs_command = "<leader>s"
"let g:jedi#use_tabs_not_buffers = 1
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
"disable docstring when autocomplete
"autocmd FileType python setlocal completeopt-=preview
"make docstring
"Possible values = ['google', 'numpy', 'rest', 'epytext']
let g:python_style = 'rest'
map <leader>ds :Docstring<CR>
map <leader>dl :DocstringLine<CR>
"snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


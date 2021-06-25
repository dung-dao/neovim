"If vscode extension remote neovim 
if !exists('g:vscode')

"@Plugin
call plug#begin('~/AppData/Local/nvim/plugged')

"@plugin-workspace
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdcommenter'
if has('win32')
  Plug 'Yggdroot/LeaderF', { 'do': '.\install.bat' }
else
  Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
endif

"@plugin-workspace-languages
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'herringtondarkholme/yats.vim'
Plug 'ekalinin/dockerfile.vim'

"@plugin-snippets
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
call plug#end()

"@Global-Config
"Clipboard
set clipboard+=unnamedplus
set number relativenumber
let mapleader = "\<Space>" 

filetype on 
filetype plugin on
filetype indent off 

"Wrap
set wrap

"Set ScrollLine
autocmd BufEnter * :set scroll=6 
syntax on

set encoding=UTF-8
set mouse=a  
set incsearch 
set hlsearch 
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set softtabstop=2

"Theme
set termguicolors
colorscheme gruvbox

"@Config

"@workspace-config
let g:lightline = {'colorscheme': 'gruvbox', }

"@nerdtree-config
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 
let g:NERDTreeHighlightFoldersFullName = 1

"Vim-rainbow
let g:rainbow_active = 1
"LeaderF
let g:Lf_ShowDevIcons = 0

"@language-config
"vim-jsx
let g:jsx_ext_required = 1

"Vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'

"@Keybinding
"Workspace
nnoremap <silent> <nowait> <leader>q :q<CR>
nnoremap <silent> <Tab> <C-w>w
nnoremap <silent> <nowait> ;; <ESC>G
map <silent> ,, <ESC>
:imap <silent> ,, <Esc>

map <Enter> o<ESC>

nnoremap <nowait> <leader>cc :Commentary<CR>
nnoremap <nowait> <leader>cf :Prettier<CR>
map <silent> <C-n> :NERDTreeToggle<CR>

endif
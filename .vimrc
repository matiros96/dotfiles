"""" 1. Vim Behaviour.
" Use filetype-based syntax hilighting, ftplugins, and indentation.
syntax on
filetype plugin indent on
" Use numbering. Don't use relative numbering as this is slow (especially in
" .tex files).
set number

"""" 2. Key Bindings.
" More convenient movement when lines are wrapped.
nmap j gj
nmap k gk

"""" 3. Vim Appearance.
" Search settings
set hlsearch " hilight
set incsearch " jump to best fit
" Set 8 lines to the cursor - when moving vertically using j/k
set scrolloff=8
" Turn off seach hilighting with <CR>.
nnoremap <CR> :nohlsearch<CR><CR>
" Tab settings
set autoindent
set smartindent
set expandtab
" Make statusline appear even with only single window.
set laststatus=2
" Numbers
set relativenumber
set number
set hidden
set noerrorbells

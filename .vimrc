"TODO try to get YCM working. Would be pretty nice
call plug#begin('~/.vim/plugged')

  "gdb
    packadd termdebug
    let g:termdebug_wide=1

  "man_pages
  Plug 'vim-utils/vim-man'

  "Vim
  Plug 'preservim/nerdtree'
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'Chiel92/vim-autoformat'
  Plug 'wokalski/autocomplete-flow'
  let g:formatterpath = ['Downloads/clang-formatter.py']

  nmap <leader>qf <Plug>(coc-fix-current)
  nmap <leader>ac  <Plug>(coc-codeaction)
  nmap <silent> [g <Plug>(coc-diagnostic-prev)
  nmap <silent> ]g <Plug>(coc-diagnostic-next)
call plug#end()

"splitting windows
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Folding of methods and stuff
set foldmethod=indent
set foldlevel=99

syntax on
set number

set tabstop=4
set shiftwidth=4
set expandtab

"Haskell stuff
au BufNewFile,BufRead *.hs
    \ set tabstop=2       |
    \ set softtabstop=2   |
    \ set shiftwidth=2    |
    \ set textwidth=79    |
    \ set expandtab       |
    \ set autoindent      |
    \ set fileformat=unix

"C stuff
au BufNewFile, BufRead *.c
    \ set tabstop=4       |
    \ set softtabstop=4   |
    \ set shiftwidth=4    |
    \ set noexpandtab
    \ set colorcolumn=100
    \ highlight ColorColumn ctermbg=darkgreen

colorscheme desert

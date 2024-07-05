" General Settings
set mouse=a
syntax on
set number
set shiftwidth=4
set showmatch
set expandtab
set hlsearch

" Plugin Management vim-plug
call plug#begin('~/.vim/plugged')

" colur-theme
Plug 'dracula/vim'

" Icons
Plug 'ryanoasis/vim-devicons'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Fuzzy-Finder
Plug 'scrooloose/nerdtree'

" Commenter
Plug 'preservim/nerdcommenter'

" Start-Screen
Plug 'mhinz/vim-startify'

" Code-Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Web-Dev speciffic Plugins
Plug 'ap/vim-css-color' " CSS Colour
Plug 'tpope/vim-surround' 
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim' 
Plug 'turbio/bracey.vim'

call plug#end()

" NERDTree Configuration
let g:NERDTreeShowHidden=1
autocmd vimenter * NERDTree

" CoC (Conqueror of Completion) Configuration
let g:coc_global_extensions = ['coc-html', 'coc-css', 'coc-json', 'coc-tsserver', 'coc-emmet']

" UltiSnips Configuration
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

autocmd VimEnter * if !argc() | NERDTree | endif

" CoC Configuration (optional)
set signcolumn=yes

" Keybindings CoC
inoremap <silent><expr> <C-Space> coc#refresh()
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" CSS-Colour
let g:cssColorVimDoNotMessMyUpdatetime = 1

" Autopairs Configuration
let g:AutoPairsShortcutToggle = '<M-p>'

" Emmet Configuration
let g:user_emmet_leader_key='<

" Bracey.vim Plugin Configuration
let g:bracey_auto_start = 0
let g:bracey_auto_open_browser = 1

" Keybindings Live-Server Start/Stopp
nmap <C-l> :Bracey<CR>
nmap <C-l><C-s> :BraceyStop<CR>


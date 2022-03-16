"
"
"       Vim config
"       Author: Callum Lees <dev.cal.lees@gmail.com>
"       https://github.com/cal-dev-lab | 2022
"
"
" => Brief help
" :PlugInstall                  - Installs plugins; append '!' to update
" :PlugUpdate                   - Updates plugins
" :PlugList                     - Lists configured plugins
" :CocList marketplace          - Lists Coc extensions for install

" => Plugins
call plug#begin()               " Required, all plugins must appear after this line

Plug 'neoclide/coc.nvim', {'branch': 'release'}         " Conquer of completion
Plug 'flazz/vim-colorschemes'                           " Colour schemes
Plug 'preservim/NERDTree'                               " File exlporer
Plug 'itchyny/lightline.vim'                            " Status bar
Plug 'vifm/vifm.vim'                                    " Floating file explorer
Plug 'ap/vim-css-color'                                 " Colour preview for CSS
Plug 'vimwiki/vimwiki'                                  " Vim Wiki
Plug 'morhetz/gruvbox'                                  " Gruvbox theme

call plug#end()                 " Required, all plugins must appear before this line

" => Start NERDTree and put cursor back in main window
autocmd VimEnter * NERDTree | wincmd p

" => Set theme
colorscheme gruvbox
set background=dark
" set termguicolors
" colorscheme 1989

" => Set relative numbers
set rnu

" => Map <Leader> key
let mapleader= " "

" => Key bindings / shortcuts

" => Vifm
map <Leader>vv :Vifm<CR>
" => Open NERDTree
map <Leader>no :NERDTree<CR>
" => Close NERDTree
map <Leader>nc :NERDTreeClose<CR>
" => Source current file
map <Leader>s :source %<CR>
" => Write file
map <Leader>w :w<CR>
" => Quit file
map <Leader>q :q<CR>
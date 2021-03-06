" |------~------~------~------~------~------~------~------------~------~------~------~------|
" |:         _ _ _  ___  _     ___  _____                                                  :|
" |:        | | (_)/ _ \| |   /   ||____ |    -- Soumyadeep ${elli0t43}                    :|
" |:     ___| | |_| |/| | |_ / /| |    / /    -> https://github.com/elli0t43               :|
" |:    / _ \ | | | |/| | __/ /_| |    \ \    -> https://dev.to/elli0t43                   :|
" |:   |  __/ | | \ |_| / |_\___  |.___/ /    -> https://myanimelist.net/profile/elli0t43  :|
" |:    \___|_|_|_|\___/ \__|   |_/\____/     -> https://instagram.com/elli0t43            :|
" |:                                                                                       :|
" |:       -- "I'll rather listen to your story, than attending your furenral" --          :|
" |------~------~------~------~------~------~------~------------~------~------~------~------|

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
  \| endif

call plug#begin("~/.config/nvim/plugged")
Plug 'jiangmiao/auto-pairs'
Plug 'akinsho/bufferline.nvim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'scrooloose/nerdtree'
Plug 'neovim/nvim-lspconfig'
Plug 'andweeb/presence.nvim'
Plug 'joshdick/onedark.vim'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'ryanoasis/vim-devicons'
Plug 'wadackel/vim-dogrun'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'mikelue/vim-maven-plugin'
Plug 'sheerun/vim-polyglot'
Plug 'prettier/vim-prettier'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-rooter'
Plug 'unblevable/quick-scope'
Plug 'justinmk/vim-sneak'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'
call plug#end()

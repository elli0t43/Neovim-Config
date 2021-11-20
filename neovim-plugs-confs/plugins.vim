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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'andweeb/presence.nvim'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'wadackel/vim-dogrun'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'mikelue/vim-maven-plugin'
Plug 'sheerun/vim-polyglot'
Plug 'prettier/vim-prettier'
Plug 'tpope/vim-rhubarb'
Plug 'unblevable/quick-scope'
Plug 'justinmk/vim-sneak'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'
Plug 'liuchengxu/vim-which-key'
call plug#end()
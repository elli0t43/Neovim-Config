let g:startify_session_dir = '~/.config/nvim/session'

            
let g:startify_custom_header = [
\ '    _   __         _    ___          ',
\ '   / | / /__  ____| |  / (_)___ ___  ',
\ '  /  |/ / _ \/ __ \ | / / / __ `__ \ ',
\ ' / /|  /  __/ /_/ / |/ / / / / / / / ',
\ '/_/ |_/\___/\____/|___/_/_/ /_/ /_/  ', 
\]

let g:startify_lists = [
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
          
let g:startify_bookmarks = [
            \ { 'c': '~/.config' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ '~/Downloads',
            \ '~/Documents',
            \ '~/.xmonad',
            \ ]
let g:startify_enable_special = 0
let g:startify_session_persistence = 1
let g:startify_change_to_vcs_root = 1
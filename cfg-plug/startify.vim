let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ ]

let g:startify_bookmarks = [
            \ {'L': '~/Dokumente/LaTeX'},
            \ {'F': '~/Dokumente/Forschungsprojekte'},
            \ {'I': '~/Dokumente/Forschungsprojekte/ISU'},
            \ {'P': '~/Dokumente/Forschungsprojekte/Python'},
            \ ]

function! StartifyEntryFormat()
  return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

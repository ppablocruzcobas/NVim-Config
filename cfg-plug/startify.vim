let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ ]

let g:startify_bookmarks = [
            \ {'L': '~/Dokumente/LaTeX'},
            \ {'F': '~/run/media/ppablocruzcobas/Daten/Forschungsprojekte'},
            \ {'I': '~/run/media/ppablocruzcobas/Daten/Dokumente/Forschungsprojekte/ISU'},
            \ {'P': '~/run/media/ppablocruzcobas/Daten/Forschungsprojekte/Python'},
            \ ]

function! StartifyEntryFormat()
  return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

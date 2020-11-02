call coc#config('list.source.bibtex', {
  \  'files': [
  \    '~/Documents/Artikel/library.bib'
  \  ]
  \})

call coc#config('list.source.bibtex.citation', {
    \ 'before': '\cite{',
	\ 'after': '}'
    \ })

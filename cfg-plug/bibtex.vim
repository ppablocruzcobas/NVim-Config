call coc#config('list.source.bibtex', {
  \  'files': [
  \    '~/Dokumente/Artikel/library.bib'
  \  ]
  \})

call coc#config('list.source.bibtex.citation', {
    \ 'before': '\cite{',
	\ 'after': '}'
    \ })

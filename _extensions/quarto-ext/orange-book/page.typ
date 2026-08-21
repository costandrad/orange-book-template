#set page(
  paper: $if(papersize)$"$papersize$"$else$"a4"$endif$,
$if(margin-geometry)$
  // Margins handled by marginalia.setup in typst-show.typ AFTER book.with()
$elseif(margin)$
  margin: ($for(margin/pairs)$$margin.key$: $margin.value$,$endfor$),
$else$
  margin: (left: 3cm, right: 2cm, top: 3cm, bottom: 2cm),
$endif$
  numbering: $if(page-numbering)$"$page-numbering$"$else$none$endif$,
  columns: $if(columns)$$columns$$else$1$endif$,
)
// Logo is handled by orange-book's cover page, not as a page background
// NOTE: marginalia.setup is called in typst-show.typ AFTER book.with()
// to ensure marginalia's margins override the book format's default margins

#let project(title: "", author: "", body) = {
  set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
  set text(font: "New Computer Modern")
  show raw: set text(font: "New Computer Modern Mono")
  show heading: set block(above: 1.4em, below: 1em)
  set heading(numbering: "1.1 ")
  set page(paper: "a4")
  set page(numbering: "1 of 1")
  set page(header: [
    Cambridge AS Level Notes
    #h(1fr)
    #title
  ])

  align(center+horizon)[
    #text(1.44em)[Cambridge Advanced Subsidiary Level Notes \ #title]
    #v(10pt)
    #text(1.2em)[#author]
  ]
  pagebreak()
  outline()
  pagebreak()

  set page(columns: 2)

  set list(
    indent: 1.8em,      
    body-indent: 0.5em,
  )

  show heading.where(level: 1): it => {
    pagebreak(weak: true) // 'weak' avoids empty pages if already at top
    it
  }

  body
}

#let point(body) = {
  line(length: 100%)
  emph(body)
  line(length: 100%)
}

#let centrebold(body) = {
  v(1%)
  align(center)[
    #strong(body)
  ]
  v(1%)
}
#let centrebold(body) = {
  set align(center)
  set text(weight: "bold")

  v(1em)
  body
  // v(1em)
}

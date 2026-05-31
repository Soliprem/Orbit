#let theme-state = state("stylised-theme", (
  text-color: rgb("#1a1a1a"),
  bg-color: white,
  bg-accent-color: none,
  accent-color: rgb("#1a4a7a"),
  accent-dark: rgb("#0d2a4a"),
  accent-mid: rgb("#1a4a7a"),
))

#let stylised-toc-state = state("stylised-toc", (
  enabled: true,
))

#let set-stylised-toc-enabled(enabled) = stylised-toc-state.update(_ => (
  enabled: enabled,
))

#let main-title-outline-state = state("main-title-outline", (
  enabled: false,
  level: 1,
))

#let set-main-title-outline(enabled, level: 1) = main-title-outline-state.update(_ => (
  enabled: enabled,
  level: level,
))

#let stylised-theme(
  title: "Document",
  paper: "us-letter",
  text-font: "Georgia",
  heading-font: ("Georgia", "Times New Roman"),
  text-size: 11pt,
  text-color: rgb("#1a1a1a"),

  // Background
  bg-color: white,
  bg-accent-color: none,        // if set, used for radial gradient center
  bg-spots: (),                 // list of (dx, dy, radius, color) named tuples

  // Accent color drives headings, rules, emph, strong
  accent-color: rgb("#1a4a7a"),
  accent-dark: rgb("#0d2a4a"),  // for h1/h2
  accent-mid: rgb("#1a4a7a"),   // for h3/h4 and emph/strong

  // Main title
  main-title-size: 24pt,
  main-title-rule-width: 3pt,
  main-title-align: center,

  // Heading sizes
  h1-size: 16pt,
  h2-size: 14pt,
  h3-size: none,
  h4-size: none,

  // Heading rules
  h1-rule-width: 1.5pt,
  h2-rule-width: none,

  // Emphasis / strong overrides
  emph-style: "italic",         // "italic", "normal", or none
  strong-weight: "bold",        // font weight string or none

  // Table styling
  show-table-style: false,

  // Margin
  margin: (x: 1.2in, y: 1in),

  body,
) = {
  set document(title: title)
  theme-state.update(_ => (
    text-color: text-color,
    bg-color: bg-color,
    bg-accent-color: bg-accent-color,
    accent-color: accent-color,
    accent-dark: accent-dark,
    accent-mid: accent-mid,
  ))

  // --- Page & background ---
  set page(
    paper: paper,
    margin: margin,
    background: {
      // Base background
      place(dx: 0pt, dy: 0pt,
        rect(
          width: 100%, height: 100%,
          fill: if bg-accent-color != none {
            gradient.radial(
              bg-color, bg-accent-color,
              center: (30%, 20%), radius: 120%
            )
          } else {
            bg-color
          }
        )
      )
      // Optional texture spots
      for spot in bg-spots {
        place(
          dx: spot.dx, dy: spot.dy,
          circle(radius: spot.radius, fill: spot.color)
        )
      }
    }
  )

  // --- Base text ---
  set text(font: text-font, size: text-size, fill: text-color)

  // --- Headings ---
  show heading.where(level: 1): it => [
    #set text(size: h1-size, weight: "bold", font: heading-font, fill: accent-dark)
    #let stroke = if h1-rule-width != none { (bottom: h1-rule-width + accent-color) } else { none }
    #block(
      inset: (top: 0.8em, bottom: 0.3em),
      stroke: stroke,
      [#it.body]
    )
  ]

  if h2-size != none {
    show heading.where(level: 2): it => [
      #set text(size: h2-size, weight: "bold", style: "italic", fill: accent-mid)
      #let stroke = if h2-rule-width != none { (bottom: h2-rule-width + accent-color) } else { none }
      #block(inset: (top: 0.6em, bottom: 0.2em), stroke: stroke)[#it.body]
    ]
  }

  if h3-size != none {
    show heading.where(level: 3): it => [
      #set text(size: h3-size, weight: "bold", style: "italic", fill: accent-mid)
      #block(inset: (top: 0.4em, bottom: 0.15em))[#it.body]
    ]
  }

  if h4-size != none {
    show heading.where(level: 4): it => [
      #set text(size: h4-size, weight: "bold", fill: accent-mid)
      #block(inset: (top: 0.3em, bottom: 0.1em))[#it.body]
    ]
  }

  // --- Emph ---
  show emph: it => [
    #set text(
      fill: accent-mid,
      style: if emph-style != none { emph-style } else { "normal" }
    )
    #it
  ]

  // --- Strong ---
  show strong: it => [
    #set text(
      fill: accent-dark,
      weight: if strong-weight != none { strong-weight } else { "bold" }
    )
    #it
  ]

  // --- Lists ---
  set list(indent: 1em, marker: [•])
  show list: it => [
    #set text(fill: text-color)
    #it
  ]

  // --- Tables ---
  if show-table-style {
    set table(
      stroke: none,
      fill: (x, y) => {
        if y == 0 {
          accent-color.transparentize(70%)
        } else if calc.odd(y) {
          accent-color.transparentize(88%)
        } else {
          white.transparentize(30%)
        }
      },
      inset: 8pt
    )

    show table: it => [
      #block(
        width: 100%,
        inset: 0pt,
        radius: 4pt,
        stroke: 2pt + accent-color.transparentize(30%),
        clip: true,
      )[#it]
    ]

    show table.cell: it => {
      if it.y == 0 {
        set text(weight: "bold", fill: text-color, size: text-size)
        it
      } else {
        set text(fill: text-color, size: text-size - 1pt)
        it
      }
    }
  }

  body
}

#let rule-box(
  title: none,
  title-level: 3,
  fill: auto,
  stroke: auto,
  inset: 12pt,
  radius: 4pt,
  body,
) = context {
  let theme = theme-state.get()
  let title-text = if title != none {
    heading(level: title-level)[#title]
  } else {
    v(0em)
  }
  let resolved-fill = if fill == auto {
    if theme.bg-accent-color != none {
      theme.bg-accent-color.transparentize(20%)
    } else {
      theme.accent-color.transparentize(88%)
    }
  } else {
    fill
  }
  let resolved-stroke = if stroke == auto {
    2pt + theme.accent-color.transparentize(30%)
  } else {
    stroke
  }

  block(
    width: 100%,
    inset: inset,
    radius: radius,
    fill: resolved-fill,
    stroke: resolved-stroke,
  )[
    #title-text
    #body
  ]
}

#let example-box(
  title: "Example",
  title-level: 3,
  fill: auto,
  stroke: auto,
  inset: 12pt,
  radius: 4pt,
  body,
) = rule-box(
  title: title,
  title-level: title-level,
  fill: fill,
  stroke: stroke,
  inset: inset,
  radius: radius,
)[#body]

#let main-title(
  heading-font: ("Georgia", "Times New Roman"),
  accent-color: rgb("#1a4a7a"),
  accent-dark: rgb("#0d2a4a"),
  size: 24pt,
  rule-width: 3pt,
  alignment: center,
  body,
) = context {
  let outline = main-title-outline-state.get()
  if outline.enabled {
    place(hide(heading(level: outline.level)[#body]))
  }

  [
    #set text(size: size, weight: "bold", font: heading-font, fill: accent-dark)
    #align(alignment)[
      #block(
        width: 100%,
        inset: (y: 0.5em),
        stroke: (bottom: rule-width + accent-color),
        [#body]
      )
    ]
    #v(0.3em)
  ]
}

#let stylised-toc(
  title: "Table of Contents",
  heading-font: ("Georgia", "Times New Roman"),
  accent-color: rgb("#1a4a7a"),
  accent-dark: rgb("#0d2a4a"),
  bg-color: white,
  depth: 3,
) = context {
  if stylised-toc-state.get().enabled {
    block(
      width: 100%,
      inset: (y: 0.8em),
      stroke: (bottom: 3pt + accent-color, top: 3pt + accent-color),
      fill: accent-color.transparentize(80%),
    )[
      #set text(size: 20pt, weight: "bold", fill: accent-dark, font: heading-font)
      #align(center)[#title]
    ]

    v(0.8em)

    block(
      width: 100%,
      inset: 20pt,
      radius: 6pt,
      fill: accent-color.transparentize(90%),
      stroke: 2pt + accent-color.transparentize(30%),
    )[
      #outline(title: none, depth: depth, indent: auto)
    ]

    pagebreak()
  }
}

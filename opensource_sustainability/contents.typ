#import "globals.typ": *
#import "@preview/codly:1.3.0": *
#import "@preview/suiji:0.5.1": *

#show: codly-init.with()

#default-focus-slide(
  config: config-page(
    background: [
      #image("assets/phone.png")
      #place(top + left, box(
        fill: white.transparentize(25%),
        width: 100%,
        height: 100%,
      ))
    ],
  ),
  subheading: [
    Open Source Anteil
  ],
)[
  #set text(size: 120pt)
  #pause
  70%
]

// Title slide
#master-slide(with-self(self => [
  #place(dy: -10%, horizon + left)[
    #show: box.with(fill: gray-5, inset: (rest: 2cm, bottom: 1.5cm))
    #set text(fill: gray-0, size: 36pt, weight: "bold")
    #{
      show: box.with(stroke: (left: gray-0 + 1mm), inset: (left: 1cm))
      show text: upper
      self.info.title
      [\ ]
      set text(size: 24pt, weight: "regular")
      self.info.subtitle
    }

    #set text(size: 15pt, weight: "regular")
    #box(height: 15pt * 2, baseline: 8pt, self.info.logo)
    #self.info.institution, #self.info.date.display(self.datetime-format)
  ]
  #place(left + bottom, dx: 1cm, dy: -1cm)[
    #self.info.author
  ]
]))

#let opensource-explain-title = "Was ist Open Source?"
#titled-slide(
  opensource-explain-title,
  subtitle: [
    #pause
    Was ist das besondere daran?
  ],
)[

]

#three-column-slide("Warum Open Source Banger ist?")[
  #show: box.with(fill: green, width: 100%)
  #set align(bottom)
  #show: grid.cell.with(align: bottom, fill: red)
  #pause
  Big test
][
  #show: box.with(fill: blue, width: 100%)
  #pause
  Small Test][Tiny Test]

#three-bodied-column-slide(
  "Warum Open Source Banger ist?",
  header-body[Some Header][Some Body],
  header-body[Some Header][
    #show: block.with(height: 6cm)
    #only("3-5")[#place(top + right, image("assets/linus-setup.png"))]
  ],
  header-body[Some Header][Some Body],
)

#let countermeasures-code = read("countermeasures-list.typ")
#side-content-slide(
  "Was können wir tun?",
  side-image: [
    #show: align.with(top)
    #only("7")[
      #show: pad.with(1cm)
      #let images = (
        image("assets/typst-seeklogo.svg", height: 2.5cm),
        image("assets/touying-removebg-preview.png", height: 2cm),
        image("assets/pympress.png", height: 2.5cm),
        image("assets/rust.png", height: 3cm),
        image("assets/tinymist-logo.png", height: 2cm),
        image("assets/nerd-fonts.png", height: 2cm),
        image("assets/mise-logo.svg", height: 2.5cm),
      )
      #let rng = gen-rng-f(182390143865)
      #let scatter-points = uniform(rng, size: 2 * images.len()).last().chunks(2)
      
      #for (image, (x, y)) in images.zip(scatter-points) {
        layout(((width: con-w, height: con-h)) => {
          let (width, height) = measure(image)
          let (dx, dy) = (x * (con-w - width), y * (con-h - height))
          place(left + top, dx: dx, dy: dy, image)
        })
      }
    ]
    #only("8")[
      #codly-range(3)
      #show raw: box.with(inset: 1cm, stroke: gray-5, radius: 6pt, outset: -8mm)
      #raw(countermeasures-code, lang: "typst", block: true)
      #place(right + horizon)[]
    ]
  ]
)[
  #show: pad.with(x: 2cm)
  #eval(countermeasures-code, mode: "markup")
]

#quote-slide(
  [
    #set text(size: 26pt)
    Open Source Software kann unsere Zukunft tragen, aber nicht ohne *Unterstützung*. Macht aus 'Open Source' heute ein '*Supported Source*'.
  ],
  attribution: "Euer Vortragender, Tim",
)

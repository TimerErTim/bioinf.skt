#import "globals.typ": *

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

#side-content-slide(
  "Was können wir tun?",
  side-image: [
    #only("-5")[idk]
  ]
)[
  #let contents = (
    [*Code*\ Bugs fixen, Dokumentation],
    [*Corporate Voice*\ OSS-Sponsoring fördern],
    [*Nutzen*\ Bewusste Tool-Wahl],
    [*Spenden*\ Private Unterstützung],
    [*Werben*\ Community vergrößern],
  )
  #let nodes() = {
    for (index, content) in contents.enumerate() {
      (
        pause,
        fletcher.node(
          (0, index),
          {
            set text(fill: gray-0)
            content
          },
          shape: fletcher.shapes.octagon,
          stroke: gray-5,
          fill: gray-4,
          inset: 3mm
        ),
      )
    }
  }

  #fletcher-diagram(
    spacing: 6mm,
    nodes(),
  )
]

#quote-slide(
  [
    #set text(size: 26pt)
    Open Source Software kann unsere Zukunft tragen, aber nicht ohne *Unterstützung*. Macht aus 'Open Source' heute ein '*Supported Source*'.
  ],
  attribution: "Euer Vortragender, Tim",
)

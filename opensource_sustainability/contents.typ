#import "globals.typ": *

#default-focus-slide(subheading: [
  Open Source Anteil
])[
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
      self.info.title; [\ ]
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

#three-bodied-column-slide("Warum Open Source Banger ist?", header-body[Some Header][Some Body], header-body[Some Header][Some Body], header-body[Some Header][Some Body])

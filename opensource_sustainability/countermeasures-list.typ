#import "globals.typ": *

#let contents = (
  [*Code*\ Bugs fixen, Dokumentation],
  [*Corporate Voice*\ OSS-Sponsoring fördern],
  [*Nutzen*\ Bewusste Tool-Wahl],
  [*Spenden*\ Private Unterstützung],
  [*Werben*\ Community vergrößern],
)

#fletcher-diagram(
  spacing: 6mm,
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
        inset: 3mm,
      ),
    )
  },
)

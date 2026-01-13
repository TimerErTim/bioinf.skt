#import "globals.typ": *

// Setup as slideshow
#show: slides

#master-slide[
  #set text(size: 60pt, fill: black)
  Der unsichtbare Riese
]

#slide(config: config-store(name: "Test"),self => {
 [#self.store]
})

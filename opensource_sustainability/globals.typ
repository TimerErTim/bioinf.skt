#import "@preview/touying:0.6.1": *
#import "../common/templates/simple.typ": *
#import "@preview/cetz:0.4.2"

#let cetz-canvas = touying-reducer.with(reduce: cetz.canvas, cover: cetz.draw.hide.with(bounds: true))

#let slides = simple-slides.with(
  config-info: config-info(
    title: [Der unsichtbare Riese],
    subtitle: [Die kritische Rolle von Open Source für globale SDGs],
    author: [Tim Peko],
    date: datetime.today(),
    institution: [FH Hagenberg],
    logo: pad(top: 0.25cm, image("assets/fh-hagenberg-logo.png")),
  ),
)

#let master-slide(config: (:), repeat: auto, setting: body => body, composer: auto, ..bodies) = {
  set text(font: "JetBrainsMono NF")

  slide(config: config, repeat: repeat, setting: setting, composer: composer, ..bodies)
}



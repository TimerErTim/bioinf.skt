#import "@preview/touying:0.6.1": *
#import "@preview/cetz:0.4.2"
#import themes.stargazer: *

#let cetz-canvas = touying-reducer.with(reduce: cetz.canvas, cover: cetz.draw.hide.with(bounds: true))

#let opensource-presentation(
  title: none,
  author: none,
  date: none,
  institution: none,
  subtitle: none,
  body,
) = {
  set text(font: "JetBrainsMono NF", size: 20pt)
  show math.equation: set text(font: "Fira Math")
  set strong(delta: 100)
  set par(justify: true)

  show: stargazer-theme.with(
    aspect-ratio: "16-9",
    progress-bar: false,
    config-info(
      title: title,
      subtitle: subtitle,
      author: author,
      date: date,
      institution: institution,
      logo: emoji.school,
    ),
    config-colors(
      primary: rgb("#000000"),
      primary-dark: rgb("#1664ad"),
      secondary: rgb("#ff0000"),
      tertiary: rgb("#33ff00"),
      neutral-lightest: rgb("#5bff19"),
      neutral-darkest: rgb("#47f6ff"),
    ),
    config-store(
      navigation: none),
    config-page(
      footer: context {
         set text(size: 12pt)
         set align(right + bottom)
         show: pad.with(0.5cm)
         utils.slide-counter.display()
      },
    ),
    config-common(
      new-section-slide-fn: none,
    )
  )
  set list(marker: ">")
  body
}

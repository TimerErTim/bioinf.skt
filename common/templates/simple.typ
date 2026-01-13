#import "@preview/touying:0.6.1": *

#let simple-slides(
  config-info: config-info(),
  body,
) = {
  show: touying-slides.with(
    config-page(
      paper: "presentation-16-9",
    ),
    config-common(
      slide-fn: slide,
      new-section-slide-fn: none,
      slide-level: 0,
      zero-margin-footer: true,
      zero-margin-header: true,
    ),
    config-info,
  )

  body
}

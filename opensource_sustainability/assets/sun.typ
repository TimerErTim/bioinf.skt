#{
    // Draw sun rays
    for i in range(12) {
      let angle = i * 30deg
      line(
        (calc.cos(angle) * 0.8, calc.sin(angle) * 0.8),
        (calc.cos(angle) * 1.2, calc.sin(angle) * 1.2),
        stroke: (paint: color, thickness: 3pt, cap: "round")
      )
    }
    
    // Draw sun body
    circle((0, 0), radius: 0.6, fill: color, stroke: none)
    
    // Draw sun face
    circle((-0.2, 0.15), radius: 0.08, fill: black) // left eye
    circle((0.2, 0.15), radius: 0.08, fill: black)  // right eye
    
    // Draw smile
    arc((0, -0.1), start: 200deg, stop: 340deg, radius: 0.25, stroke: (paint: black, thickness: 2pt))
}

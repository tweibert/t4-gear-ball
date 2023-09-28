# VW T4 Gear Selector Ball (015 311 544) 3D Model

This is a 3D CAD model of VW part 015 311 544 (gear selector ball,
"Schaltkugel").

The original spare part has been discontinued by Volkswagen Classic 
Parts in August 2023. Aftermarkt parts are available, but they are 
often of inferior quality, and can be hard to install.

## Features

The model was created in [OpenSCAD](https://openscad.org/), which means
that the source code can be edited with a text editor.
All relevant dimensions (size of the ball, diameter of the through
hole) are defined as constants in the header of the source file,
so you can adjust them easily to finetune your print. 

**The ball is printed with the hole aligned vertically to the Z-axis. 
The "upper" end will be the one facing towards the inner side of
the gear selector lever when mounted, the "lower" end will face
towards the outside.**

The following dimensions can be edited (all units are in millimeters):

* `diameter` - total (horizontal) diameter of the ball ().
* `height` - total (vertical) height of the ball; this will be slightly lower than `diameter` because of the flattened ends
  of the ball.
* `hole_diameter` - the diameter of the hole/drilling that goes
  all the way through.
* `bottom_hole_diameter`, `bottom_hole_depth` - the diameter and
  depth of the widened end of the hole at the bottom (outer) side
  of the ball.
* `top_hole_diameter`, `top_hole_depth` - the diameter and
  depth of the widened end of the hole at the top (inner) side
  of the ball.

For easier installation, the edges upper (inside) edges can be slightly
tapered using the following settings:

* `top_inner_taper_height` and `top_inner_taper_width`
* `top_outer_taper_height` and `top_outer_taper_width`

Set `top_<inner/outer>_taper_height=0` to disable tapering of an edge.


## How to Create the STL File

* Download and install [OpenSCAD](https://openscad.org/)
* Open the model file (`*.scad`)
* Adjust dimensions in the header of the file according to your needs (optionally)
* Render and export STL

## How to Print

(we will add recommended printer settings as soon as we have some 
experience)

## License

Copyright 2023 by Torben Weibert.

The model is licensed under 
[CC-BY-NC-SA](https://creativecommons.org/licenses/by-nc-sa/4.0/). 
Feel free to remix and share, but it must not be used commercially 
without written permission by the author.

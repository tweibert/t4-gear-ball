// CONFIGURATION

// Total horizontal diameter
diameter = 24;

// Total height (= diameter minus flattended top/bottom)
height = 19.7;

// Diameter of through hole
hole_diameter = 8.5;

// Diameter and depth of widened bottom end of hole
bottom_hole_diameter = 10.3;
bottom_hole_depth = 5;

// Diameter and depth of widened top end of hole
top_hole_diameter = 10.3;
top_hole_depth = 4.6;

// Inner taper of top hole; set height to 0 to disable
top_inner_taper_height = 0.5;
top_inner_taper_width = 0.5;

// Outer taper of top hole; set height to 0 to disable
top_outer_taper_height = 0.5;
top_outer_taper_width = 0.5;

// Precision of round shapes
precision = 50;

// END OF CONFIGRATION


// some shortcuts...
radius = diameter / 2;
flattening = (diameter - height) / 2;


difference() {
    
    // Ball
    sphere(radius, $fn=precision);


    // Flattened top
    translate([0, 0, radius - flattening/2]) 
        cube([diameter, diameter, flattening], center=true);
    
    // Flattend bottom
    translate([0, 0, 0 - radius + flattening/2]) 
        cube([diameter, diameter, flattening], center=true);

    // Center hole
    translate([0, 0, 0 - radius]) 
        cylinder(
            h=diameter, 
            d=hole_diameter, 
            $fn=precision
        );

    // Bottom widening
    translate([0, 0, 0 - height/2]) 
        cylinder(
            h=bottom_hole_depth, 
            d=bottom_hole_diameter, 
            $fn=precision
        );

    // Top widening
    translate([0, 0, height/2 - top_hole_depth]) 
        cylinder(
            h=top_hole_depth, 
            d=top_hole_diameter, 
            $fn=precision
         );
        
    /*
    // Top inner taper
    translate([0, 0, height/2 - top_hole_depth - top_inner_taper]) 
        cylinder(
            h=top_inner_taper, 
            d1=hole_diameter,
            d2=top_hole_diameter,
            $fn=precision
         );

    */
    
    // Top inner taper
    translate([0, 0, height/2 - top_hole_depth - top_inner_taper_height]) 
        cylinder(
            h=top_inner_taper_height, 
            d1=hole_diameter,
            d2=hole_diameter + 2 * top_inner_taper_width,
            $fn=precision
         );

    // Top Outer taper
    translate([0, 0, height/2 - top_outer_taper_height]) 
        cylinder(
            h=top_outer_taper_height, 
            d1=top_hole_diameter, 
            d2=top_hole_diameter + 2 * top_outer_taper_width, 
            $fn=precision
         );
}

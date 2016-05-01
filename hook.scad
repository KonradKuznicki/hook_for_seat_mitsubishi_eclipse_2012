

fn=50;
translate([0,0,1]) {
    intersection() {
        br=24.8;
        h=2;
        cylinder(h, br/2, br/2, true, $fn=fn*5);
        cube([19, br, h], true);
    }
}

of = (24.8 /2) - 7.5 - 3.5;
translate([0,of,4.25]) {
    intersection() {
        br=7;
        h=4.5;
        cylinder(h, br/2, br/2, true, $fn=fn*5);
        cube([6, br, h], true);
    }
}

translate([0,0,7]) {
        cube([11, 23, 1.5], true);
}

translate([0,-1,6.5+(16.5/2)]) {
        cube([8.33, 21, 16.5], true);
}

translate([0, 5.75,6.5 +16.5 + (6.75 / 2)]) {
        cube([8.33, 7.5, 6.75], true);
}

translate([0, 2.25,6.5 +16.5 + 6.75 + (7.5 /2) ]) {
    difference() {
        cube([8.33, 14.5, 7.5], true);
        br=5.5;
        translate([0, -3, -1]) {
            rotate([0, 90 ,0]) {
                cylinder(8.5, br/2, br/2, true, $fn=fn*5);
            }
            translate([0, 0, -1.5]) 
                cube([8.5, 5.5, 2.75], true);
        }
    }
}


translate([0, 2.25,6.5 +16.5 + 6.75 + 7.5 +5]) {
    difference() {
        cube([8.33, 14.5, 10], true);
        translate([0,-4,9.5]) 
            rotate ([35,0,0])
                cube([8.5, 30, 20], true);
    }
}

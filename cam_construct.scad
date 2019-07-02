
// oben
rotate([90, 0, 0]) translate([0, 0, -52])
intersection(){
     translate([32, -50, -0.25]) rotate([0, 0, 45]) cube([64, 64, 2.5]);
     difference() {
        cube([64, 17, 2]);
        for (a =[5:1]){
            translate([a*10+2, 9, -0.25]) cylinder(h = 2.5, r=3);
        }
    }
}
// end oben

difference() {
    cube([64, 50, 2]);

    translate([7, 39.25, -0.25]) cylinder(h = 2.5, r=1.5);
    translate([57, 39.25, -0.25]) cylinder(h = 2.5, r=1.5);
    
    translate([17, 18.5, -0.25]) cube([30 , 15, 2.5]);
    
    translate([9.5, 14.5, -0.25]) cylinder(h = 2.5, r=1.5);
    translate([54.5, 14.5, -0.25]) cylinder(h = 2.5, r=1.5);
}


// unten
rotate([90, 0, 0]) translate([0, 0, -2])
intersection(){
     translate([32, -50, -0.25]) rotate([0, 0, 45]) cube([64, 64, 2.5]);
     difference() {
        cube([64, 17, 2]);
        for (a =[5:1]){
            translate([a*10+2, 9, -0.25]) cylinder(h = 2.5, r=3);
        }
    }
}
// end unten

// untere stütze

translate([15.5, -2, 2]) cube([2, 2, 10]);
translate([46, -2, 2]) cube([2, 2, 10]);
intersection(){
    difference() {  
        translate([0, -5, 0]) cube([64, 6, 2]);
        translate([32, -85, -0.25]) rotate([0, 0, 45]) cube([64, 64, 2.5]);
    }
    translate([32, -25, -0.25]) rotate([0, 0, 45]) cube([64, 64, 2.5]);
}
// end untere stüztze
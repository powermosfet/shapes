$fn = 64;

// variables
wall_thickness = 1.5;
d = 12.72;
handle_l = 120;
handle_w = 6;
handle_end_d = 20;

// shapes
difference() {
  union() {
    cylinder(d + wall_thickness, d = d + wall_thickness * 2);
    hull() {
      translate([0, -handle_w / 2, 0]) {
        cube([handle_l, handle_w, wall_thickness]);
      }
      translate([handle_l, 0, 0]) {
        cylinder(wall_thickness, d = handle_end_d);
      }
    }
    rotate([0, 6.8, 0]) {
      translate([0, -wall_thickness/2, 0]) {
        cube([handle_l / 2, wall_thickness, d / 3 * 2]);
      }
    }
  }
  translate([0, 0, -wall_thickness]) {
    cylinder(d + 1, d=d);
  }
  translate([0, 0, -10]) {
    cube([800, 800, 20], center = true);
  }
}

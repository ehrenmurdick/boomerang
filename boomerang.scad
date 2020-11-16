$fn = 20;

sw = 284.04675;
sh = 106.65894;

holeSize = 4.3;
holeR = 4.3/2;

mountOR = 2;


difference() {
  linear_extrude(height=5) {
    import("boomerang-outline.svg", center=true);
  }

  translate([0, 0, -2]) {
    linear_extrude(height=10) {
      import("boomerang-holes.svg", center=true);
    }
  }
}

translate([0, 0, 5]) {
  linear_extrude(height=3) {
    import("boomerang-switch-locations.svg", center=true);
  }
}


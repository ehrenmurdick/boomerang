$fn = 20;

sw = 284.04675;
sh = 106.65894;

holeSize = 4.3;
holeR = 4.3/2;

mountOR = 2;


difference() {
  linear_extrude(height=1.6) {
    import("boomerang-outline.svg");
  }

  translate([0, 0, -1]) {
    linear_extrude(height=3) {
      import("boomerang-holes.svg");
    }
  }
}

translate([0, 0, 1.6]) {
  linear_extrude(height=6) {
    import("boomerang-switch-locations.svg");
  }
}

translate([0, 0, 1.6]) {
  linear_extrude(height=6) {
    import("usb-location.svg");
  }
}


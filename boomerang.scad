$fn = 20;

sw = 284.04675;
sh = 106.65894;


holeSize = 4.3;
holeR = 4.3/2;

mountOR = 2;

module the_board() {
  union() {

    difference() {
      linear_extrude(height=1.6) {
        import("boomerang-outline.svg");
      }

      translate([0, 0, -2]) {
        linear_extrude(height=8) {
          import("boomerang-holes.svg");
        }
      }
    }

    translate([0, 0, 1.6]) {
      linear_extrude(height=3) {
        import("boomerang-switch-locations.svg");
      }
    }


    translate([138.554, sh - 22.923, 1.6]) {
      rotate([90, 0, 0]) {
        linear_extrude(height=5) {
          import("usb-profile.svg");
        }
      }
    }

  }

  translate([0, 0, -2]) {
    linear_extrude(height=2) {
      import("reset-location.svg");
    }
  }
}

module bottom() {
  difference() {
    translate([0, 0, -3]) {
      linear_extrude(height=3) {
        import("case-outer.svg");
      }
    }

    translate([0, 0, -5]) {
      linear_extrude(height=5) {
        import("reset-location.svg");
      }
    }
  }
}


module top() {
  union() {
    difference() {
      union() {
        translate([0, 0, 7]) {
          linear_extrude(height=3) {
            import("case-outer.svg");
          }
        }

        linear_extrude(height=7) {
          import("case-outer.svg");
        }
      }

      translate([0, 0, 4]) {
        linear_extrude(height=3) {
          import("boomerang-outline.svg");
        }
      }

      translate([0, 0, 6]) {
        linear_extrude(height=6) {
          import("boomerang-switch-locations.svg");
        }
      }

      translate([0, 0, -1]) {
        linear_extrude(height=8) {
          import("boomerang-outline.svg");
        }
      }

      translate([138.554, sh - 22.923, 16.6]) {
        rotate([90, 0, 0]) {
          linear_extrude(height=5) {
            import("usb-profile.svg");
          }
        }
      }
    }
    linear_extrude(height=7) {
      import("boomerang-holes.svg");
    }
  }
}

translate([0, 0, 40]) {
  top();
}

translate([0, 0, -40]) {
  bottom();
}

  %the_board();


$fn = 20;

sw = 284.04675;
sh = 106.65894;


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
    linear_extrude(height=3) {
      import("bottom-step.svg");
    }

    translate([0, 0, -2]) {
      linear_extrude(height=7) {
        import("screw-drillout.svg");
      }
    }

    translate([0, 0, -1]) {
      linear_extrude(height=2.4) {
        import("screw-countersink.svg");
      }
    }

    translate([0, 0, -2]) {
      linear_extrude(height=7) {
        import("reset-location.svg");
      }
    }
    
    // feets

    translate([10, 35, -1]) {
      cylinder(h=2, r=4);
    }

    translate([25, sh-9, -1]) {
      cylinder(h=2, r=4);
    }

    translate([sw-10, 35, -1]) {
      cylinder(h=2, r=4);
    }

    translate([sw-25, sh-9, -1]) {
      cylinder(h=2, r=4);
    }

    translate([(sw/2), sh/2+19, -1]) {
      cylinder(h=2, r=4);
    }

    translate([(sw/2), sh/2-45, -1]) {
      cylinder(h=2, r=4);
    }
  }
}


module top() {
  difference() {
    union() {
      difference() {
        union() {
          // top plate
          translate([0, 0, 7]) {
            linear_extrude(height=3) {
              import("case-outer.svg");
            }
          }

          linear_extrude(height=7) {
            import("case-outer.svg");
          }
        }

        // key holes
        translate([0, 0, 6]) {
          linear_extrude(height=6) {
            import("boomerang-switch-locations.svg");
          }
        }

        // body cut out
        translate([0, 0, -1]) {
          linear_extrude(height=8) {
            import("case-inner.svg");
          }
        }

        translate([0, 0, -1]) {
          linear_extrude(height=2) {
            import("bottom-step.svg");
          }
        }

        // usb jack
        translate([138.554, 0, 5]) {
          rotate([90, 0, 0]) {
            linear_extrude(height=5) {
              offset(0.1) {
              import("usb-profile.svg");
              }
            }
          }
        }
      }

      // screw bodies
      linear_extrude(height=7) {
        import("boomerang-holes.svg");
      }
    }

    // inner screw holes
    translate([0, 0, -1]) {
      linear_extrude(height=8) {
        import("screw-drillout.svg");
      }
    }
  }

}

translate([0, 0, 40]) {
  top();
}

translate([0, 0, -40]) {
  %bottom();
}

%the_board();


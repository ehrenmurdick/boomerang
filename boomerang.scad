$fn = 20;

sw = 284.04675;
sh = 106.65894;

holeSize = 4.3;
holeR = 4.3/2;

mountOR = 2;


linear_extrude(height=5) {
  import("boomerang-outline.svg", center=false);
}


function ty(a) = sh - a;
function tx(a) = a;

holeLocs = [
  [22.915  , 59.724] ,
  [32.776  , 22.922] ,
  [106.380 , 42.644] ,
  [96.519  , 79.446] ,
  [173.370 , 42.636] ,
  [183.231 , 79.438] ,
  [246.975 , 22.914] ,
  [256.835 , 59.715] ,
];


for (hole = holeLocs) {
  translate([tx(hole[0]) + holeR, ty(hole[1]) - holeR, 0]) {
    cylinder(r=mountOR, h=10);
  }
}

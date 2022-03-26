module chamfer_extrude(height = 2, angle = 10, ) {
    minkowski() {
        // convert 2D path to very thin 3D extrusion
        linear_extrude(height = 0.001) {
            children();
        }
        // generate $fn-sided pyramid with apex at origin,
        // rotated "point-up" along the y-axis
        rotate(270) {
            rotate_extrude() {
                polygon([
                    [ 0,                    0.001 - height  ],
                    [ height * tan(angle),  0.001 - height  ],
                    [ 0,                    0               ]
                ]);
            }
        }
    }
}


/*
//linear_extrude(height=20) {
	rotate_extrude() {
        polygon([ [0,0] , [1, -8], [0, -1] ]);
    };
linear_extrude(height=17) {
    scale([0.125,0.125,1]) {
        import("C:/Users/specki/Downloads/axolotl-inner.svg");
    }
}
*/

linear_extrude(height=15) {
    offset(r=-0.4) scale([0.125,0.125,1]) {
        import("../svg/axolotl-outer.svg");
    }
}
linear_extrude(height=12) {
    offset(r=-0.4) scale([0.125,0.125,1]) {
        import("../svg/axolotl-inner.svg");
    }
}
linear_extrude(height=9) {
    scale([0.125,0.125,1]) import("../svg/axolotl-inner.svg");
}
linear_extrude(height=12) {
    scale([0.125,0.125,1]) import("../svg/axolotl-outer.svg");
}

linear_extrude(height=3) {
    scale([0.125,0.125,1]) import("../svg/axolotl-support.svg");
}

linear_extrude(height=15) {
    offset(r=-0.125) scale([0.125,0.125,1]) {
        import("../svg/mew.svg", center=true);
    }
}
linear_extrude(height=12) {
    offset(r=0.3)scale([0.125,0.125,1]) {
        import("../svg/mew.svg", center=true);
    }
}

linear_extrude(height=3) {
    offset(r=0.1) scale([0.125,0.125,1]) import("../svg/mew-support.svg", center=true);
}


var xx = argument0;
var yy = argument1;
var left = argument2;
var right = argument3;
var top = argument4;
var bottom = argument5;


part_emitter_region(empPartSys.empSparks, empSparkEm, left, right, top, bottom, ps_shape_ellipse, ps_distr_invgaussian);
part_emitter_burst(empPartSys.empSparks, empSparkEm, empPartSys.spark, 30);
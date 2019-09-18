//scr_smokeTrail (x,y)


var xx = argument0;
var yy = argument1;


part_particles_create(obj_partSysSmoke.smokeTrail, xx, yy, obj_partSysSmoke.smoke1, irandom_range(0,4));
part_particles_create(obj_partSysSmoke.smokeTrail, xx + random_range(-2, 2), yy + random_range(-2, 2), obj_partSysSmoke.smoke2, irandom_range(1,3));
part_particles_create(obj_partSysSmoke.smokeTrail2, xx + random_range(-2, 2), yy + random_range(-2, 2), obj_partSysSmoke.smoke3, irandom_range(0,2));
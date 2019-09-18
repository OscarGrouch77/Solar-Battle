//scr_smokeTrail (x,y)


var xx = argument0;
var yy = argument1;


part_particles_create(obj_partSysMissileSmoke.smokeTrail, xx, yy, obj_partSysMissileSmoke.smoke1, 3);
part_particles_create(obj_partSysMissileSmoke.smokeTrail, xx + random_range(-2, 2), yy + random_range(-2, 2), obj_partSysMissileSmoke.smoke2, 3);
part_particles_create(obj_partSysMissileSmoke.smokeTrail2, xx + random_range(-2, 2), yy + random_range(-2, 2), obj_partSysMissileSmoke.smoke3, 3);
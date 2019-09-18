///scr_p2Explosion2(x,y)

var xx = argument0;
var yy = argument1;

//part_particles_create(obj_partSysP2Explosion.player2ExplosionBot, xx, yy, obj_partSysP2Explosion.particle1, 5);
//part_particles_create(obj_partSysP2Explosion.player2ExplosionTop, xx, yy, obj_partSysP2Explosion.particle2, 3);
part_particles_create(obj_partSysP2Explosion.player2ExplosionTop2, xx + random_range(-16,16), yy + random_range(-16,16), obj_partSysP2Explosion.particle4, 2);
part_particles_create(obj_partSysP2Explosion.player2ExplosionTop2, xx + random_range(-16,16), yy + random_range(-16,16), obj_partSysP2Explosion.particle4, 2);
part_particles_create(obj_partSysP2Explosion.player2ExplosionTop2, xx + random_range(-16,16), yy + random_range(-16,16), obj_partSysP2Explosion.particle4, 2);
//part_particles_create(obj_partSysP2Explosion.player2ExplosionTop, xx, yy, obj_partSysP2Explosion.particle3, 3);
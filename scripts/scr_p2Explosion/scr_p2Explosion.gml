///scr_p2Explosion(x,y)

var xx = argument0;
var yy = argument1;

part_particles_create(obj_partSysP2Explosion.player2ExplosionBot, xx, yy, obj_partSysP2Explosion.particle1, 5);
part_particles_create(obj_partSysP2Explosion.player2ExplosionTop, xx, yy, obj_partSysP2Explosion.particle2, 3);
part_particles_create(obj_partSysP2Explosion.player2ExplosionTop, xx + random_range(-8,8), yy + random_range(-8,8), obj_partSysP2Explosion.particle2, 2);
part_particles_create(obj_partSysP2Explosion.player2ExplosionTop, xx + random_range(-8,8), yy + random_range(-8,8), obj_partSysP2Explosion.particle2, 2);
part_particles_create(obj_partSysP2Explosion.player2ExplosionTop, xx + random_range(-8,8), yy + random_range(-8,8), obj_partSysP2Explosion.particle2, 2);
part_particles_create(obj_partSysP2Explosion.player2ExplosionTop, xx, yy, obj_partSysP2Explosion.particle3, 3);
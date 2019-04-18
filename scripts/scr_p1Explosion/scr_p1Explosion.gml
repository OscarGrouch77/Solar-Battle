///scr_p1Explosion(x,y)

var xx = argument0;
var yy = argument1;

part_particles_create(obj_partSysP1Explosion.player1ExplosionBot, xx, yy, obj_partSysP1Explosion.particle1, 5);
part_particles_create(obj_partSysP1Explosion.player1ExplosionTop, xx, yy, obj_partSysP1Explosion.particle2, 3);
part_particles_create(obj_partSysP1Explosion.player1ExplosionTop, xx + random_range(-8,8), yy + random_range(-8,8), obj_partSysP1Explosion.particle2, 2);
part_particles_create(obj_partSysP1Explosion.player1ExplosionTop, xx + random_range(-8,8), yy + random_range(-8,8), obj_partSysP1Explosion.particle2, 2);
part_particles_create(obj_partSysP1Explosion.player1ExplosionTop, xx + random_range(-8,8), yy + random_range(-8,8), obj_partSysP1Explosion.particle2, 2);
part_particles_create(obj_partSysP1Explosion.player1ExplosionTop, xx, yy, obj_partSysP1Explosion.particle3, 3);
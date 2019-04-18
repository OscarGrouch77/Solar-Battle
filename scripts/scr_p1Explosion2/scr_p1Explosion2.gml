///scr_p1Explosion2(x,y)

var xx = argument0;
var yy = argument1;

//part_particles_create(obj_partSysP1Explosion.player1ExplosionBot, xx, yy, obj_partSysP1Explosion.particle1, 5);
//part_particles_create(obj_partSysP1Explosion.player1ExplosionTop, xx, yy, obj_partSysP1Explosion.particle2, 3);
part_particles_create(obj_partSysP1Explosion.player1ExplosionTop2, xx + random_range(-16,16), yy + random_range(-16,16), obj_partSysP1Explosion.particle2, 2);
part_particles_create(obj_partSysP1Explosion.player1ExplosionTop2, xx + random_range(-16,16), yy + random_range(-16,16), obj_partSysP1Explosion.particle2, 2);
part_particles_create(obj_partSysP1Explosion.player1ExplosionTop2, xx + random_range(-16,16), yy + random_range(-16,16), obj_partSysP1Explosion.particle2, 2);
//part_particles_create(obj_partSysP1Explosion.player1ExplosionTop, xx, yy, obj_partSysP1Explosion.particle3, 3);
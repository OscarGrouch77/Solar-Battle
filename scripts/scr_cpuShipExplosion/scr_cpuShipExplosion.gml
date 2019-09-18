///scr_p2Explosion(x,y)

var xx = argument0;
var yy = argument1;

part_particles_create(obj_partSysCpuShipExplosion.player2ExplosionBot, xx, yy, obj_partSysCpuShipExplosion.particle1, 5);
part_particles_create(obj_partSysCpuShipExplosion.player2ExplosionTop, xx, yy, obj_partSysCpuShipExplosion.particle2, 3);
part_particles_create(obj_partSysCpuShipExplosion.player2ExplosionTop, xx + random_range(-8,8), yy + random_range(-8,8), obj_partSysCpuShipExplosion.particle2, 2);
part_particles_create(obj_partSysCpuShipExplosion.player2ExplosionTop, xx + random_range(-8,8), yy + random_range(-8,8), obj_partSysCpuShipExplosion.particle2, 2);
part_particles_create(obj_partSysCpuShipExplosion.player2ExplosionTop, xx + random_range(-8,8), yy + random_range(-8,8), obj_partSysCpuShipExplosion.particle2, 2);
part_particles_create(obj_partSysCpuShipExplosion.player2ExplosionTop, xx, yy, obj_partSysCpuShipExplosion.particle3, 3);
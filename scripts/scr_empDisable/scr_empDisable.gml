//scr_bulletHit (x,y)


var xx = argument0;
var yy = argument1;

part_particles_create(obj_partSysHit.bulletHit, xx, yy, obj_partSysHit.disableSpark, 25);
//part_particles_create(obj_partSysHit.bulletHit, xx, yy, obj_partSysHit.hitGlow, 25);

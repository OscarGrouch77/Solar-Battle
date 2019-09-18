//scr_bulletHit (x,y)
//@function health_gain
//@argument x
//@argument y


var xx = argument0;
var yy = argument1;

crossx = xx + random_range(0, sprite_width/3)
crossy = yy + random_range(0, sprite_height/3)
var healthRNG = random(60);
if (healthRNG > 50)
{
	part_particles_create(obj_partSysHealthGain.healthGain, crossx, crossy, obj_partSysHealthGain.cross, 1);
}

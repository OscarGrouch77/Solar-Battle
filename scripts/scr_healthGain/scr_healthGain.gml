//scr_bulletHit (x,y)
//@function health_gain
//@argument x
//@argument y
//@argument part_sys_instance


var xx = argument0;
var yy = argument1;
var partSys = argument2;
crossx = xx + random_range(0, sprite_width/3)
crossy = yy + random_range(0, sprite_height/3)
var healthRNG = random(60);
if (healthRNG > 50)
{
	part_particles_create(partSys.healthGain, crossx, crossy, partSys.cross, 1);
}

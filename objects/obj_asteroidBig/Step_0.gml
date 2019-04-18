/// @description Insert description here
// You can write your code in this editor

image_angle = point_direction(x,y,obj_sun.x,obj_sun.y);

distanceSun = point_distance(obj_sun.x, obj_sun.y, x, y);						///defining variables

scr_gravityForce(x,y);

if (distanceSun > 1300)											//destroys if too far away
{
	instance_destroy();
}

if (hp <= 0)														//destroy if hp = 0
{
	instance_create_layer(x, y, "bottomParticle", obj_particleSysExplosion);
	scr_asteroidExplosion(x, y);
	instance_destroy();	
}

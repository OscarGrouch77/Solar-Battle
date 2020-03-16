/// @description Insert description here
// You can write your code in this editor

image_angle = point_direction(x,y,obj_sun.x,obj_sun.y);

distanceSun = point_distance(obj_sun.x, obj_sun.y, x, y);						///defining variables

scr_gravityForce(x,y);

if !(point_in_rectangle(x, y, -65, -65, room_width + 65, room_height + 65))										//destroys if too far away
{
	instance_destroy();
}

if (hp <= 0)														//destroy if hp = 0
{
	var myExp = instance_create_layer(x, y, "bottomParticle", obj_particleSysExplosion);
	myExp.astDirection = self.direction;
	myExp.astSpeed = self.speed;
	instance_destroy();	
}

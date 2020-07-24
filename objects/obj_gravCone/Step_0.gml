/// @description Insert description here
// You can write your code in this editor

if!(instance_exists(owner))
{
	instance_destroy();
}

if (instance_exists(owner))
{
	if (owner.gravConeExists == false)
	{
		instance_destroy();
	}
}

timer += 0.15;

shd_angle = image_angle;						

vectorX = lengthdir_x(1, shd_angle);
vectorY = lengthdir_y(1, shd_angle);


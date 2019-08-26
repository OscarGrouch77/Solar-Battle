/// @description Insert description here
// You can write your code in this editor

if (instance_exists(owner))
{
	if (owner.shield = false)
	{
		instance_destroy();
	}
	image_angle = owner.image_angle;
}
else instance_destroy();
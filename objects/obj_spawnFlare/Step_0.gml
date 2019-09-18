/// @description Insert description here
// You can write your code in this editor

if alarm[0] = -1
{
	alarm[0] = lifetime;
}

image_angle = image_angle + rotate;
image_alpha = image_alpha + random_range(-0.5, 0.5);

speed = speed * 1.02;

if (point_distance(x, y, targetX, targetY) < 8)
{
	instance_destroy();
}


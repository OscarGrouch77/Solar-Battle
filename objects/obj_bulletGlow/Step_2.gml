/// @description Insert description here
// You can write your code in this editor
if !instance_exists(owner)
{
	instance_destroy()
}
else
{
	x = owner.x;
	y = owner.y;
}


image_alpha = random_range(0.2, 0.5);
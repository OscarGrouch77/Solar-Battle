/// @description Insert description here
// You can write your code in this editor
if !instance_exists(owner)
{
	instance_destroy();
}
else
{
	x = owner.x;
	y = owner.y;
	if (owner.image_index = 5)
	{
		image_alpha = 0;
	}
	else
	image_alpha = random_range(0.2, 0.5);
}

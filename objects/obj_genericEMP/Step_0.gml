/// @description Insert description here
// You can write your code in this editor

timer++
scale = min(scale + (3-scale)*0.15, 3);
image_xscale = scale;
image_yscale = scale;

alpha = min(alpha + (2.5-scale)*0.15, 0.85);
image_alpha = alpha + (random_range(-alpha*0.1, alpha*0.1));

if(instance_exists(owner))
{
	x = owner.x;
	y = owner.y;
}
else instance_destroy();
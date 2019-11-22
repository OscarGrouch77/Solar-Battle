/// @description Insert description here
// You can write your code in this editor

timer++;

image_xscale = scale;
image_yscale = scale;
size			= sprite_width - (512 * scale); // 512 is about the distance from the wprite border to the lens border
half_size		= size * 0.5;

if (fade == false)
{
	//alpha change
	alpha = min(alpha + (2.5-scale)*0.15, 0.95);
	image_alpha = alpha + (random_range(-alpha*0.1, alpha*0.1));
	
	//scale change
	scale = min(scale + ((maxScale-scale)*0.1), maxScale);
	
	//particle emitter stuff
	leftEdgeX = x - (EMPMaxRad*scale*0.49);
	rightEdgeX = x + (EMPMaxRad*scale*0.49);
	topEdgeY = y - (EMPMaxRad*scale*0.49);
	bottomEdgeY = y + (EMPMaxRad*scale*0.49);

	scr_empSparks(x,y, leftEdgeX, rightEdgeX, topEdgeY, bottomEdgeY);
}
else
{
	//alpha fade
	alpha -= 0.1;
	image_alpha = alpha + (random_range(-alpha*0.1, alpha*0.1));
	if (image_alpha <= 0)
	{
		instance_destroy();
	}
	
	//scale fade
	scale -= 0.01;
	
	//particle emitter stuff
	leftEdgeX = x - (EMPMaxRad*scale*0.49);
	rightEdgeX = x + (EMPMaxRad*scale*0.49);
	topEdgeY = y - (EMPMaxRad*scale*0.49);
	bottomEdgeY = y + (EMPMaxRad*scale*0.49);

	scr_empSparks(x,y, leftEdgeX, rightEdgeX, topEdgeY, bottomEdgeY);
}



if(instance_exists(owner))
{
	x = owner.x;
	y = owner.y;
}
else instance_destroy();
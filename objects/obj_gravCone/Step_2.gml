/// @description Insert description here
// You can write your code in this editor

if (instance_exists(owner))
{
	image_angle = owner.image_angle;
	x = owner.x;
	y = owner.y;



	//run through the list and push any pushable object that collides with the gravCone
	
	for(var i = ds_list_size(list_pushableObjects); i > 0; --i){
		var pushThis = instance_place(x, y, list_pushableObjects[| i-1]);
		with pushThis
		{
			scr_gravGunPush(other.x, other.y, x, y);
		}
	}
}

/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player2))

{
	x = obj_player2.x + lengthdir_x(8, obj_player2.image_angle);
	y = obj_player2.y + lengthdir_y(8, obj_player2.image_angle);
	image_angle = obj_player2.image_angle;
}

else

instance_destroy()
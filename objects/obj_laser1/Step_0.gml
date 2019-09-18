/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player1))

{
	x = obj_player1.x + lengthdir_x(8, obj_player1.image_angle);
	y = obj_player1.y + lengthdir_y(8, obj_player1.image_angle);
	image_angle = obj_player1.image_angle;
}

else

instance_destroy()
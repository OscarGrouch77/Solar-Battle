/// @description Insert description here
// You can write your code in this editor

if (point_in_rectangle(x, y, -16, -16, room_width+16, room_height+16)) and (distanceSun > 64)
{
	instance_create_layer(x, y, "Instances", obj_powerUp);
}
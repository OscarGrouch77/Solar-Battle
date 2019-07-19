/// @description Insert description here
// You can write your code in this editor

if (point_in_rectangle(x, y, 0, 0, room_width, room_height)) and (distanceSun > 64)
{
	instance_create_layer(x, y, "Instances", obj_powerUp);
}
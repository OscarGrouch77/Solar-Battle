/// @description Insert description here
// You can write your code in this editor

if !(instance_exists(obj_asteroidBig))


{
	instance_create_layer(random_range(0,room_width),choose(room_height + 64, 0 - 64),"Instances",obj_asteroidBig);
}
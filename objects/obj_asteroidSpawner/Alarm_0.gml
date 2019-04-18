/// @description Insert description here
// You can write your code in this editor

if !(instance_exists(obj_asteroidBig))


{
	instance_create_layer(random_range(0,2048),choose(room_height + sprite_height,0 - sprite_height),"Instances",obj_asteroidBig);
}
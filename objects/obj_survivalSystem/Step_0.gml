/// @description Insert description here
// You can write your code in this editor

//end game if esc pressed
if (keyboard_check(vk_escape))
{
	game_end();
}


//spawn new enemy if no enemy exists
if !(instance_exists(obj_cpuSurvival1)) and !(instance_exists(obj_spawnObjectSurvival))
{
	do
	{
		randX1 = irandom(room_width);
		randY1 = irandom(room_height);
	}
	until (point_distance(randX1, randY1, obj_sun.x, obj_sun.y) > 200) 
	instance_create_layer(randX1, randY1, "topParticle", obj_spawnObjectSurvival);
}


//show game over message if player ship does not exist
if !(instance_exists(obj_player1)) and (alarm[0] = -1)
{
	alarm[0] = 120
}

/// @description Insert description here
// You can write your code in this editor

//end game if esc pressed
if (keyboard_check(vk_escape))
{
	game_end();
}

//makes cursor invisible if game in progress
if (gameOver == false)
{
	window_set_cursor(cr_none);
}
else window_set_cursor(cr_default);

//spawn new enemy if no enemy exists
if !(instance_exists(sEnemy)) and !(instance_exists(obj_spawnObjectSurvival))
{
	if alarm[1] = -1
	{
		global.roundNumber++
		alarm[1] = 120;
	}	
}

if (global.roundNumber = 3) and !(instance_exists(obj_asteroidSpawner))
{
	instance_create_layer(1, 1,"Instances", obj_asteroidSpawner)
}

//show game over message if player ship does not exist
if (gameOver = false)
{
	if !(instance_exists(obj_player1)) and (alarm[0] = -1)
	{
		alarm[0] = 120
	}
}
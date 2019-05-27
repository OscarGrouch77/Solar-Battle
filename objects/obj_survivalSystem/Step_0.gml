/// @description Insert description here
// You can write your code in this editor

//end game if esc pressed
if (keyboard_check(vk_escape))
{
	game_end();
}


//spawn new enemy if no enemy exists
if !(instance_exists(sEnemy)) and !(instance_exists(obj_spawnObjectSurvival))
{
	if alarm[1] = -1
	{
		global.roundNumber++
		alarm[1] = 120;
	}	
}


//show game over message if player ship does not exist
if !(instance_exists(obj_player1)) and (alarm[0] = -1)
{
	alarm[0] = 120
}

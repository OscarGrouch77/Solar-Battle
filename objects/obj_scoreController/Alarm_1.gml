/// @description Insert description here
// You can write your code in this editor

roundTime = 0;
if (instance_exists(obj_player1))
{
	obj_player1.healing = true;
}

//timer for new enemy spawn
obj_survivalSystem.alarm[1] = 120;
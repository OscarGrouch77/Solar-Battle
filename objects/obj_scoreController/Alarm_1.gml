/// @description initiates next round, heals player, initiates new enemy spawn
// You can write your code in this editor


//initiates next round and heals player
roundTime = 0;
if (instance_exists(obj_player1))
{
	obj_player1.healing = true;
}

//timer to stop displaying round changes
alarm[5] = 120;

//timer for new enemy spawn
obj_survivalSystem.alarm[1] = 120;

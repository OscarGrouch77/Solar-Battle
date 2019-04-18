/// @description Insert description here
// You can write your code in this editor





if (instance_exists(obj_player2))
{
	speed = obj_player2.speed
	direction = obj_player2.direction;
	motion_add(obj_player2.playerDir,8);
}

alarm[0] = 100;

bulletDir = direction

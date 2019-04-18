/// @description Insert description here
// You can write your code in this editor





if (instance_exists(obj_player1))
{
	speed = obj_player1.speed
	direction = obj_player1.direction;
	motion_add(obj_player1.playerDir,8);
}

alarm[0] = 100;

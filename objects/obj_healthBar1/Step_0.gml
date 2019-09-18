/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player1))
{

	x = obj_player1.x
	y = obj_player1.y + 20

	if (obj_player1.hp = 3) sprite_index = spr_healthFull;

	if (obj_player1.hp = 2) sprite_index = spr_healthMed;

	if (obj_player1.hp = 1) sprite_index = spr_healthLow;

}

else
{
	instance_destroy();
}
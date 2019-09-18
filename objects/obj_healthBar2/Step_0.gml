/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player2))
{

	x = obj_player2.x
	y = obj_player2.y + 20

	if (obj_player2.hp = 3) sprite_index = spr_healthFull;

	if (obj_player2.hp = 2) sprite_index = spr_healthMed;

	if (obj_player2.hp = 1) sprite_index = spr_healthLow;

}

else
{
	instance_destroy();
}

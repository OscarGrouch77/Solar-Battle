/// @description Insert description here
// You can write your code in this editor
//draw missile and EMP ammo
if (instance_exists(obj_player1))
{
	for (var i = 0; i < obj_player1.missileAmmo; i++)
	{
		var misOffset = 15;
		draw_sprite_ext(spr_missile, 0, 30 + (misOffset * i), 60, 1, 1, 90, c_white, 1);
	}
	for (var i = 0; i < obj_player1.empAmmo; i++)
	{
		var misOffset = 20;
		draw_sprite_ext(spr_empGlobeBig, 0, 30 + (misOffset * i), 60, 0.03, 0.03, 0, c_white, 1);
	}
}	

if (instance_exists(obj_player1))
{
	draw_sprite(spr_armour,0, 30, 30);
	draw_set_font(fnt_stats);
	draw_text(50, 30, string(obj_player1.hp));
}
/// @description Insert description here
// You can write your code in this editor


if (instance_exists(obj_player1))
{
	var heat = obj_player1.overheat

	var colour = c_yellow

	if (heat <= 5) colour = c_yellow;
	if (heat > 5) colour = c_orange;
	if (heat > 8) colour = c_red;
	if(obj_player1.charging == false)
	{
		draw_line_width_colour(obj_player1.x, obj_player1.y + 25, obj_player1.x, obj_player1.y + 28, obj_player1.overheat*3, colour, colour);
	}
	if (obj_player1.shootAble == false)
	{
		draw_set_alpha(pulse);
		draw_line_width_color(obj_player1.x, obj_player1.y + 25, obj_player1.x, obj_player1.y + 28, 30, c_red, c_red);
		draw_set_alpha(1);
	}
}

else
{
	instance_destroy();
}
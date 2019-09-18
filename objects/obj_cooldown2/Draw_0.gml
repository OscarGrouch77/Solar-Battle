/// @description Insert description here
// You can write your code in this editor


if (instance_exists(obj_player2))
{
	

	var heat = obj_player2.overheat

	var colour = c_yellow

	if (heat <= 5) colour = c_yellow;
	if (heat > 5) and (heat <=8) colour = c_orange;
	if (heat > 8) colour = c_red;

	draw_line_width_colour(obj_player2.x, obj_player2.y + 17, obj_player2.x, obj_player2.y + 20, obj_player2.overheat*3, colour, colour);
}

else
{
	instance_destroy();
}
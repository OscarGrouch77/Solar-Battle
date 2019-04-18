/// @description Insert description here
// You can write your code in this editor


if (instance_exists(obj_player1))
{
	

	var heat = obj_player1.overheat

	var colour = c_yellow

	if (heat <= 5) colour = c_yellow;
	if (heat > 5) and (heat <=8) colour = c_orange;
	if (heat > 8) colour = c_red;

	draw_line_width_colour(obj_player1.x, obj_player1.y + 17, obj_player1.x, obj_player1.y + 20, obj_player1.overheat*3, colour, colour);
}

else
{
	instance_destroy();
}
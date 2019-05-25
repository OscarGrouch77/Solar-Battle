/// @description Insert description here
// You can write your code in this editor

if (gameOver == true)
{
	draw_set_font(fnt_title);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	isPlural = "round";
	if (global.roundNumber > 1) isPlural = "rounds";
	draw_text(room_width/2, room_height/3, "You Survived " + string(global.roundNumber) + " " + string(isPlural));
}

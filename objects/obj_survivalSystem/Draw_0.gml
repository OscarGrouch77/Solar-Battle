/// @description Insert description here
// You can write your code in this editor

if (gameOver == true)
{
	draw_set_font(fnt_title);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	isPlural = "rounds";
	if (survivedRounds = 1) isPlural = "round";
	draw_text(room_width/2, room_height/3, "You Survived " + string(survivedRounds) + " " + string(isPlural));
}

draw_set_font(fnt_menu);
draw_set_colour($1494FA);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, 50, "ROUND " + string(global.roundNumber));


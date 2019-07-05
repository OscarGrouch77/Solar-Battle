/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_menu);
draw_set_colour($1494FA);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_text(room_width - 300, 50, "SCORE " + string(score));


if (awardScore == true)
{
	draw_set_font(fnt_menu);
	draw_set_colour($1494FA);
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_text(room_width - 300, 100, "BONUS " + string(global.roundBonus))
	
	draw_set_halign(fa_left);
	if (countMulti <= 5)
	{
		draw_set_color(c_red);
		draw_set_font(fnt_multi5);
	}
	if (countMulti < 5)
	{
		draw_set_color(c_orange);
		draw_set_font(fnt_multi4);
	}
	if (countMulti < 4)
	{
		draw_set_color(c_yellow);
		draw_set_font(fnt_multi3);
	}
	if (countMulti < 3)
	{
		draw_set_color(c_white);
		draw_set_font(fnt_multi2);
	}
	if (countMulti > 1)
	{
		draw_text(room_width - 300, 100, " X " + string(countMulti));	
	}
}
else
{
	draw_set_font(fnt_menu);
	draw_set_colour($1494FA);
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_text(room_width - 300, 100, "BONUS " + string(global.roundBonus));
}

draw_set_font(fnt_menu);
draw_set_colour($1494FA);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_text(room_width - 300, 150, "MULTIPLIER x " + string(global.multiplier));


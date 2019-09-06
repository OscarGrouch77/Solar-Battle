/// @description Insert description here
// You can write your code in this editor

//draw_rectangle(x, y, x + 130, y + 40, true);


draw_set_font(fnt_menu);

if (point_in_rectangle(mouse_x, mouse_y, x, y, x + string_width("HIGHSCORES"), y + string_height("HIGHSCORES")))
{
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fnt_menu);
	draw_set_color($D5FAFF);
	draw_text(x, y, "HIGHSCORES");
}
else
{
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fnt_menu);
	draw_set_color($1494FA);
	draw_text(x, y, "HIGHSCORES");
}

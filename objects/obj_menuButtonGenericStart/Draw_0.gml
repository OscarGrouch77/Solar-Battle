/// @description Insert description here
// You can write your code in this editor

//draw_rectangle(x, y, x + 160, y + 40, true);

if (point_in_rectangle(mouse_x, mouse_y, x - string_width("START")*0.5, y - string_height("START")*0.5, x + string_width("START")*0.5, y + string_height("START")*0.5))
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_scoreBig);
	draw_set_color($D5FAFF);
	draw_text(x, y, "START");
}
else
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_scoreBig);
	draw_set_color($1494FA);
	draw_text(x, y, "START");
}
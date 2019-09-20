/// @description Insert description here
// You can write your code in this editor

//draw_rectangle(x, y, x + 160, y + 40, true);

if (point_in_rectangle(mouse_x, mouse_y, x, y, x + string_width("OK"), y + string_height("OK")))
{
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fnt_menu);
	draw_set_color($D5FAFF);
	draw_text(x, y, "OK");
}
else
{
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fnt_menu);
	draw_set_color($1494FA);
	draw_text(x, y, "OK");
}
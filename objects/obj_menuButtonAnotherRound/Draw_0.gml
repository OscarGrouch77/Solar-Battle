/// @description Insert description here
// You can write your code in this editor

//draw_rectangle(x - 115, y, x + 115, y + 40, true);



if (point_in_rectangle(mouse_x, mouse_y, x - 115, y, x + 115, y + 40))
{
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(fnt_menu);
	draw_set_color($D5FAFF);
	draw_text(x, y, "ANOTHER ROUND");
}
else
{
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(fnt_menu);
	draw_set_color($1494FA);
	draw_text(x, y, "ANOTHER ROUND");
}
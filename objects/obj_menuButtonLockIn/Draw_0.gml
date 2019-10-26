/// @description Insert description here
// You can write your code in this editor

//draw_rectangle(x, y, x + 130, y + 40, true);


draw_set_font(fnt_menu);

if (point_in_rectangle(mouse_x, mouse_y, x - string_width(buttonText)*0.5, y, x + string_width(buttonText)*0.5, y + string_height(buttonText)))
{
	if (active == true)
	{
		draw_set_alpha(1);
		draw_set_color($D5FAFF);
	}
	else 
	{
		draw_set_alpha(0.5);
		draw_set_color(c_gray);
	}
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(fnt_menu);
	draw_text(x, y, buttonText);
}
else
{
	if (active == true)
	{
		draw_set_alpha(1);
		draw_set_color($1494FA);
	}
	else 
	{
		draw_set_alpha(0.5);
		draw_set_color(c_gray);
	}
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(fnt_menu);
	draw_text(x, y, buttonText);
}

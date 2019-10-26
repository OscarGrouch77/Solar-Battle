/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_menu);

if (active == true)
{
	if (point_in_rectangle(mouse_x, mouse_y, x - string_width(buttonText)*0.5, y, x + string_width(buttonText)*0.5, y + string_height(buttonText)))
	{
		if (mouse_check_button_pressed(mb_left))
		{
			select = !select;  //toggle select btwn true or false
		}
	}
}

if (select == true)
{
	buttonText = "DE-SELECT"
}
else buttonText = "SELECT"
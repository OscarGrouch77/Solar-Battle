/// @description Insert description here
// You can write your code in this editor

if (point_in_rectangle(mouse_x, mouse_y, x - 115, y, x + 115, y + 40))
{
	if (mouse_check_button_pressed(mb_left))
	{
		room_restart();
	}
}

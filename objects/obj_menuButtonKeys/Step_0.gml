/// @description Insert description here
// You can write your code in this editor

if (point_in_rectangle(mouse_x, mouse_y, x, y, x + string_width("KEYBOARD SETTINGS"), y + string_height("KEYBOARD SETTINGS")))
{
	if (mouse_check_button_pressed(mb_left))
	{
		room_goto(rm_inputSettings);
	}
}
/// @description Insert description here
// You can write your code in this editor

if (point_in_rectangle(mouse_x, mouse_y, x - 115, y, x + 115, y + 40))
{
	if (mouse_check_button_pressed(mb_left))
	{
		audio_stop_all();
		room_restart();
	}
}

if (keyboard_check_pressed(global.p1Fire)) or (keyboard_check_pressed(global.p2Fire))
{
	audio_stop_all();
	room_restart();
}
	
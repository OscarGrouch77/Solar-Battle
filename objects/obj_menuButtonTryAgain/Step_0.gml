/// @description Insert description here
// You can write your code in this editor

if (point_in_rectangle(mouse_x, mouse_y, x - 70, y, x + 70, y + 40))
{
	if (mouse_check_button_pressed(mb_left))
	{
		obj_survivalSystem.showHighScore = false;
		global.roundNumber = 1;
		audio_stop_all();
		room_restart();
	}
}

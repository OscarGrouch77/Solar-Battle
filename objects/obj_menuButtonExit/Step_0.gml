/// @description Insert description here
// You can write your code in this editor

if (point_in_rectangle(mouse_x, mouse_y, x - 35, y, x + 35, y + 40))
{
	if (mouse_check_button_pressed(mb_left))
	{
		if instance_exists(obj_survivalSystem) obj_survivalSystem.showHighScore = false;
		room_goto(rm_titleScreen);
		audio_stop_all();
	}
}

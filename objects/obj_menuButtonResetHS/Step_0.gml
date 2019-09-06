/// @description Insert description here
// You can write your code in this editor

if (point_in_rectangle(mouse_x, mouse_y, x, y, x + string_width("RESET HIGHSCORES"), y + string_height("RESET HIGHSCORES")))
{
	if (mouse_check_button_pressed(mb_left))
	{
		confirm = true;
	}
}

if (resetHS == true) 
{
	highscore_clear();
	resetHS = false;
}
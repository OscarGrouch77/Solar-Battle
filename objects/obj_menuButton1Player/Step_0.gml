/// @description Insert description here
// You can write your code in this editor

if (point_in_rectangle(mouse_x, mouse_y, x, y, x + 160, y + 40))
{
	if (mouse_check_button_pressed(mb_left))
	{
		global.gameType = gameType.oneDuel;
		room_goto(rm_difficultySelect);
	}
}
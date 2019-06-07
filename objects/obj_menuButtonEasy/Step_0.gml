/// @description Insert description here
// You can write your code in this editor

if (point_in_rectangle(mouse_x, mouse_y, x, y, x + 70, y + 40))
{
	if (mouse_check_button_pressed(mb_left))
	{
		global.difficulty = 0;
		global.gameType = gameType.oneDuel;
		room_goto(rm_game1p);
	}
}
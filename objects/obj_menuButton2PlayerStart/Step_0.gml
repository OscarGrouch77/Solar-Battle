/// @description Insert description here
// You can write your code in this editor

if (point_in_rectangle(mouse_x, mouse_y, x, y, x + string_width("START"), y + string_height("START")))
{
	if (mouse_check_button_pressed(mb_left))
	{
		global.p1Ship = obj_shipSelectp1.ship[obj_shipSelectp1.choice,1];
		global.p2Ship = obj_shipSelectp2.ship[obj_shipSelectp2.choice,1];
		global.gameType = gameType.twoDuel;
		room_goto(rm_game2p);
	}
}
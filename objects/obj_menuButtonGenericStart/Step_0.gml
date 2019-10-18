/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_scoreBig);
if (point_in_rectangle(mouse_x, mouse_y, x, y - string_height("START")*0.5, x + string_width("START"), y + string_height("START")*0.5))
{
	if (mouse_check_button_pressed(mb_left))
	{
		if (global.gameType == gameType.twoDuel)
		{
			global.p1Ship = obj_shipSelectp1.ship[obj_shipSelectp1.choice,1];
			global.p2Ship = obj_shipSelectp2.ship[obj_shipSelectp2.choice,1];
		}
		else global.p1Ship = obj_shipSelectp1.ship[obj_shipSelectp1.choice,1];
		room_goto(target);
	}
}
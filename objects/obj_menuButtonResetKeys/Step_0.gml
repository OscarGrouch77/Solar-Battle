/// @description Insert description here
// You can write your code in this editor

if (point_in_rectangle(mouse_x, mouse_y, x, y, x + string_width("RESET TO DEFAULTS"), y + string_height("RESET TO DEFAULTS")))
{
	if (mouse_check_button_pressed(mb_left))
	{
		global.p1Left = ord("A");
		global.p1Right = ord("D");
		global.p1Thrust = ord("W");
		global.p1Reverse = ord("S");
		global.p1Fire = vk_space;
		global.p1AltFire = ord("M");

		global.p2Left = vk_left;
		global.p2Right = vk_right;
		global.p2Thrust = vk_up;
		global.p2Reverse = vk_down;
		global.p2Fire = vk_enter;
		global.p2AltFire = vk_add;
		
		ini_open("settings.ini");
		
		ini_write_real("controls", "p1Left", global.p1Left);
		ini_write_real("controls", "p1Right", global.p1Right);
		ini_write_real("controls", "p1Thrust", global.p1Thrust);
		ini_write_real("controls", "p1Reverse", global.p1Reverse);
		ini_write_real("controls", "p1Fire", global.p1Fire);
		ini_write_real("controls", "p1AltFire", global.p1AltFire);

		//load p2 controls from ini
		ini_write_real("controls", "p2Left", global.p2Left);
		ini_write_real("controls", "p2Right", global.p2Right);
		ini_write_real("controls", "p2Thrust", global.p2Thrust);
		ini_write_real("controls", "p2Reverse", global.p2Reverse);
		ini_write_real("controls", "p2Fire", global.p2Fire);
		ini_write_real("controls", "p2AltFire", global.p2AltFire);
		
		ini_close();
	}
}
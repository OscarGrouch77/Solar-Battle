/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_escape))
{
	game_end();
}

if (egg == true) and !(instance_exists(obj_cpuDemo1))
{
	if alarm[0] == -1
	{
		alarm[0] = 120;
	}
}


if (egg == true) and !(instance_exists(obj_cpuDemo2))
{
	if alarm[1] == -1
	{
		alarm[1] = 120;
	}
}

if (point_in_rectangle(mouse_x, mouse_y, obj_sun.x - 30, obj_sun.y - 30, obj_sun.x + 30, obj_sun.y + 30))
{
	if (mouse_check_button_pressed(mb_left))
	{
		egg = true;
	}
}
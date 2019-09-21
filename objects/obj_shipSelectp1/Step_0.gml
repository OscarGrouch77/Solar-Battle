/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left))
{
	if (point_in_triangle(mouse_x, mouse_y, Vcentre - 250, 400, Vcentre - 220, 350, Vcentre - 220, 450))
	{
		choice = choice - 1;
	}
	if (point_in_triangle(mouse_x, mouse_y, Vcentre + 250, 400, Vcentre + 220, 350, Vcentre + 220, 450))
	{
		choice = choice + 1;
	}
}

if (keyboard_check_pressed(global.p1Left))
{
	choice = choice - 1;
}
if (keyboard_check_pressed(global.p1Right))
{
	choice = choice + 1;
}

if (choice > array_height_2d(ship) - 1) choice = 0;
if (choice < 0) choice = array_height_2d(ship) - 1;
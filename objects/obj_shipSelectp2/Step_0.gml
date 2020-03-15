/// @description Insert description here
// You can write your code in this editor



if (mouse_check_button_pressed(mb_left))
{
	if (point_in_triangle(mouse_x, mouse_y, Vcentre - 250, Vtop + 230, Vcentre - 220, Vtop + 180, Vcentre - 220, Vtop + 280))
	{
		selectButton.select = false;
		choice = choice - 1;
	}
	if (point_in_triangle(mouse_x, mouse_y, Vcentre + 250, Vtop + 230, Vcentre + 220, Vtop + 180, Vcentre + 220, Vtop + 280))
	{
		selectButton.select = false;
		choice = choice + 1;
	}
}

if (keyboard_check_pressed(global.p2Left))
{
	selectButton.select = false;
	choice = choice - 1;
}
if (keyboard_check_pressed(global.p2Right))
{
	selectButton.select = false;
	choice = choice + 1;
}

if (keyboard_check_pressed(global.p2Fire)) and (selectButton.active == true)
{
	selectButton.select = !selectButton.select;
}

if (selectButton.select == false)
{
	lockedIn = false;
}
else lockedIn = true;

if (choice > array_height_2d(ship) - 1) choice = 0;
if (choice < 0) choice = array_height_2d(ship) - 1;
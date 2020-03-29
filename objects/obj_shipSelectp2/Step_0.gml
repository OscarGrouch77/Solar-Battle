/// @description Insert description here
// You can write your code in this editor

//checks if ship unlocked
if (global.shipStats[choice,9] == 1)
{
	selectButton.active = true;
	showTip = false;
}
else 
{
	selectButton.active = false;
	if (point_in_rectangle(mouse_x, mouse_y, Vcentre - 200, Vtop + 30, Vcentre + 200, Vtop + 430))
	{
		showTip = true;
	}
	else showTip = false;
}

//cycles through ship choices when side arrows are clicked
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

//cycles through ship choices when left or right buttons pressed
if (keyboard_check_pressed(Kleft))
{
	selectButton.select = false;
	choice = choice - 1;
}
if (keyboard_check_pressed(Kright))
{
	selectButton.select = false;
	choice = choice + 1;
}

//selects ship if selectable when fire button pressed
if (keyboard_check_pressed(Kfire)) and (selectButton.active == true)
{
	selectButton.select = !selectButton.select;
}

//sets locked in to true if the select variable of the select button is true
if (selectButton.select == false)
{
	lockedIn = false;
}
else lockedIn = true;

//cycles through the array of ships
if (choice > array_height_2d(ship) - 1) choice = 0;
if (choice < 0) choice = array_height_2d(ship) - 1;
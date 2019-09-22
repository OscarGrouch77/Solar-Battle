/// @description Insert description here
// You can write your code in this editor

if (point_in_rectangle(mouse_x, mouse_y, x, y, x + string_width(buttonText), y + string_height(buttonText)))
{
	if (mouse_check_button_pressed(mb_left))
	{
		room_goto(roomTarget);   //use this if the button goes to a room and set variable "roomTarget". otherwise delete and put code to execute
	}
}
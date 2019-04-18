/// @description Insert description here
// You can write your code in this editor

if (point_in_rectangle(mouse_x, mouse_y, x - sprite_width/2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2))
{
	image_xscale = 1.1;
	image_yscale = 1.1;
	
	if (mouse_check_button(mb_left)) pressed = true
	
	if (mouse_check_button(mb_left) and pressed == true)
	{
		image_index = 1;
	}
	else
	{
		image_index = 0;
	}
	if (mouse_check_button_released(mb_left))
	{
		image_index = 0;
		game_end();
	}
}

else
{
	image_xscale = 1;
	image_yscale = 1;
	image_index = 0;
	pressed = false;
}


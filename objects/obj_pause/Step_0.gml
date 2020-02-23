/// @description Insert description here
// You can write your code in this editor

////pausing if not already paused and taking screenshot
if (keyboard_check_pressed(vk_escape))
{
	if (!paused)
	{
		audio_pause_all();
		paused = true;
		screenShot = sprite_create_from_surface(application_surface, 0, 0, room_width, room_height, 0, 0, 0, 0);
		instance_deactivate_all(1);
	}
	else
	{
		if(sprite_exists(screenShot))
		{
			sprite_delete(screenShot);
		}
		instance_activate_all();
		audio_resume_all();
		paused = false;
	}
}

if (paused)
{
	window_set_cursor(cr_default);
	if (mouse_check_button_pressed(mb_left)) && !(confirm)
	{
		if (point_in_rectangle(mouse_x, mouse_y, room_width * 0.5 - string_width("QUIT TO MENU") * 0.5, boxTop + Vspacing * 3, room_width * 0.5 + string_width("QUIT TO MENU") * 0.5, boxTop + Vspacing * 3 + string_height("QUIT TO MENU")))
		{
			room_goto(rm_titleScreen);
		}
		if (point_in_rectangle(mouse_x, mouse_y, room_width * 0.5 - string_width("QUIT TO DESKTOP") * 0.5, boxTop + Vspacing * 4, room_width * 0.5 + string_width("QUIT TO DESKTOP") * 0.5, boxTop + Vspacing * 4 + string_height("QUIT TO DESKTOP")))
		{
			confirm = true;
		}
		if (point_in_rectangle(mouse_x, mouse_y, room_width * 0.5 - string_width("RESUME") * 0.5, boxTop + Vspacing * 5, room_width * 0.5 + string_width("RESUME") * 0.5, boxTop + Vspacing * 5 + string_height("RESUME")))
		{
			if(sprite_exists(screenShot))
			{
				sprite_delete(screenShot);
			}
			instance_activate_all();
			audio_resume_all();
			paused = false;
		}
	}

if (quitDT) game_end();
}
else
{
	window_set_cursor(cr_none);
}


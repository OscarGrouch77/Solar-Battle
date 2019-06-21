/// @description Insert description here
// You can write your code in this editor

//end game if esc pressed
if (keyboard_check(vk_escape))
{
	game_end();
}

//makes cursor invisible if game in progress

if (gameOver == false)
{
	window_set_cursor(cr_none);
}
else window_set_cursor(cr_default);

//checking for end game states


if (gameOver = false)
{
	if !(instance_exists(obj_player1)) and (alarm[0] == -1)			//if player 1 is dead starts alarm 0
	{
		alarm[0] = 180;	
	}
	if !(instance_exists(dEnemy)) and (alarm[1] == -1)			//if player 2 is dead starts alarm 1
	{
		alarm[1] = 180;
	}
}


//takes snapshot of screen and deactivates instances for end game pause screen

if (gameOver = true) and (takeSnapShot = true)
{
	
	var offset = 0;
	for (var i = 0; i < instance_count; ++i)
	{
		if (instance_find(all, i).sprite_index != -1)
		{
			allObjects[i - offset, 0] = instance_find(all, i).sprite_index;
			allObjects[i - offset, 1] = instance_find(all, i).image_index;
			allObjects[i - offset, 2] = instance_find(all, i).x;
			allObjects[i - offset, 3] = instance_find(all, i).y;
			allObjects[i - offset, 4] = instance_find(all, i).image_xscale;
			allObjects[i - offset, 5] = instance_find(all, i).image_yscale;
			allObjects[i - offset, 6] = instance_find(all, i).image_angle;
			allObjects[i - offset, 7] = instance_find(all, i).image_blend;
			allObjects[i - offset, 8] = instance_find(all, i).image_alpha;
		}
		else
			 ++offset;
	}
	gamePaused = true;
	instance_deactivate_all(true);
	instance_create_layer(room_width/2, (room_height/2) + 150, "Instances", obj_menuButtonAnotherRound);
	instance_create_layer(room_width/2, (room_height/2) + 200, "Instances", obj_menuButtonExit);
	takeSnapShot = false	
}

if (gameOver = true)
{
audio_stop_sound(snd_engine1);
audio_stop_sound(snd_engine2);
}

//testing particle system

//if (mouse_check_button(mb_left)) scr_smokeTrail(mouse_x + random_range(-2, 2), mouse_y + random_range(-2, 2));
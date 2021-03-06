/// @description system for 2 player duel
// You can write your code in this editor



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
	if !(instance_exists(obj_player2)) and (alarm[1] == -1)			//if player 2 is dead starts alarm 1
	{
		alarm[1] = 180;
	}
}

//takes snapshot of screen and deactivates instances for end game pause screen

if (gameOver = true) and (takeSnapShot = true)
{
	audio_pause_all();
	gamePaused = true;
	screenShot = sprite_create_from_surface(application_surface, 0, 0, room_width, room_height, 0, 0, 0, 0);
	instance_deactivate_all(1);
	instance_create_layer(room_width/2, (room_height/2) + 150, "Instances", obj_menuButtonAnotherRound);
	instance_create_layer(room_width/2, (room_height/2) + 200, "Instances", obj_menuButtonExit);
	takeSnapShot = false	
}

if (gameOver = true)
{
audio_stop_sound(snd_engine1);
audio_stop_sound(snd_engine2);
audio_stop_sound(snd_missile1);
}


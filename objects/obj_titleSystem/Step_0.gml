/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_escape))
{
	switch(room)
	{
		case rm_gameSelect: room_goto(rm_titleScreen); break;
		case rm_settings: room_goto(rm_titleScreen); break;
		case rm_inputSettings: room_goto(rm_settings); break;
		case rm_highscore: room_goto(rm_settings); break;
		case rm_duelTypeSelect: room_goto(rm_gameSelect); break;
		case rm_difficultySelect: room_goto(rm_duelTypeSelect); break;
	}
}


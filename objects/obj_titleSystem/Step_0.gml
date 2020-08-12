/// @description Insert description here
// You can write your code in this editor

//controls what the escape key does by room
if (keyboard_check_pressed(vk_escape))
{
	switch(room)
	{
		case rm_titleScreen: confirmQuit = true; break;
		case rm_gameSelect: room_goto(rm_titleScreen); break;
		case rm_settings: room_goto(rm_titleScreen); break;
		case rm_inputSettings: room_goto(rm_settings); break;
		case rm_highscore: room_goto(rm_settings); break;
		case rm_duelTypeSelect: room_goto(rm_gameSelect); break;
		case rm_difficultySelect: room_goto(rm_duelTypeSelect); break;
		case rm_shipSelect1p: room_goto(rm_difficultySelect); break;
		case rm_shipSelect2p: room_goto(rm_duelTypeSelect); break;
		case rm_shipSelectSurvival: room_goto(rm_gameSelect); break;
	}
}


if (quit == true)
{
	game_end();
}


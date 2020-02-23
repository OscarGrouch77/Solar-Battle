/// @description Insert description here
// You can write your code in this editor


//makes cursor invisible if game in progress
if (gameOver == false)
{
	window_set_cursor(cr_none);
}
else window_set_cursor(cr_default);


//spawn asteroid at round 3 or higher
if (global.roundNumber = 3) and !(instance_exists(obj_asteroidSpawner))
{
	if (obj_scoreController.gameActive == true)
	{
		instance_create_layer(1, 1,"Instances", obj_asteroidSpawner);
	}
}

if (global.roundNumber = 10)
{
	if (obj_scoreController.gameActive == true)
		{
			obj_asteroidSpawner.astNumber = 2;
		}
}

//show game over message if player ship does not exist
if (gameOver = false) and (global.roundEnd == false)
{
	if !(instance_exists(obj_player1)) and (alarm[0] = -1)
	{
		alarm[0] = 120
	}
}

//create highscore buttons
if (showHighScore == true)
{
	if !(instance_exists(obj_menuButtonExit)) instance_create_layer(x,y, "UI", obj_menuButtonExit);
	if !(instance_exists(obj_menuButtonTryAgain)) instance_create_layer(x,y, "UI", obj_menuButtonTryAgain);
}




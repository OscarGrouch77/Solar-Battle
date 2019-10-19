/// @description Insert description here
// You can write your code in this editor

//starts awarding score after a 1s delay

//gameActive variable to track when action is happening
if (instance_exists(obj_player1)) and (instance_exists(obj_survivalSystem.sEnemy))
{
	gameActive = true;
}
else gameActive = false;

if (gameActive == true)
{
	roundTime++
	global.roundBonus = round(max(100, ((global.roundNumber * 100) - (roundTime/30))));
}


//starts awarding score after a 1s delay, sets startBonus for multiplying

if (global.roundEnd == false)
{
	if !(instance_exists(obj_survivalSystem.sEnemy)) and !(instance_exists(obj_spawnObjectSurvival))
	{
		if (instance_exists(obj_player1))
		{
			if (alarm[2] = -1) and (awardScore == false)
			{
				alarm[2] = 120;
			}	
			global.roundEnd = true;
		}
	}
}

//show bonus, multiplier and award score

//take snapshot for paused screen
if (awardScore == true)
{
	if(takeSnapShot == true)
	{
		audio_stop_sound(snd_engine1);
		audio_stop_sound(snd_engine2);
		gamePaused = true;
		screenShot = sprite_create_from_surface(application_surface, 0, 0, room_width, room_height, 0, 0, 0, 0);
		instance_deactivate_all(1);
		instance_activate_object(obj_InGameSystem);
		instance_activate_object(obj_survivalSystem);
		takeSnapShot = false;	
	}
	
	
	///awarding score
	if (alarm[3] = -1) and (countMulti > 1)
	{
		addBonus = false;
		alarm[3] = 60;
	}
	if (alarm[4] = -1) and (countMulti <= 1)
	{
		alarm[4] = 60;
	}
	if (addBonus == true)
	{
		if (global.roundBonus > 0)
		{
			var scrInc = 10;
			if global.roundBonus > 1000 scrInc = 100;
			if global.roundBonus > 10000 scrInc = 1000;
			var targetScore = score + global.roundBonus;
			score = min(score + scrInc, targetScore);
			global.roundBonus = max(global.roundBonus - scrInc, 0);
		}
		else
		{	
			timer++
			if (timer>180)
			{
				if (alarm[1] = -1)
				{
					alarm[1] = 120;
					addBonus = false;
					awardScore = false;
					gamePaused = false;
					global.roundNumber++;
					global.multiplier = startMulti;
					global.multiplier++;
					global.roundBonus = round(max(100, ((global.roundNumber * 100))))
				}
			}
		}
	}
}
if (gamePaused == false)
{
	instance_activate_all();
}
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
		if (alarm[2] = -1) and (awardScore == false)
		{
			alarm[2] = 120;
		}	
		global.roundEnd = true;
	}
}

//show bonus, multiplier and award score

//take snapshot for paused screen
if (awardScore == true)
{
	timer++;
	if(takeSnapShot == true)
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
		audio_stop_sound(snd_engine1);
		audio_stop_sound(snd_engine2);
		instance_deactivate_all(true);
		takeSnapShot = false;	
	}
	
	
	///awarding score
	if (alarm[3] = -1) and (countMulti > 1)
	{
		addBonus = false;
		alarm[3] = 60;
	}
	if (alarm[4] = -1) and (countMulti = 1)
	{
		alarm[4] = 30;
	}
	if (addBonus == true)
	{
		if (global.roundBonus > 0) and (timer < 1000)
		{
			var targetScore = score + global.roundBonus;
			score = min(score + 10, targetScore);
			global.roundBonus = max(global.roundBonus - 10, 0);
		}
		else
		{
			if (alarm[1] = -1)
			{
				alarm[1] = 120;
				addBonus = false;
				awardScore = false;
				gamePaused = false;				
			}
		}
	}
}
if (gamePaused == false)
{
	instance_activate_all();
}
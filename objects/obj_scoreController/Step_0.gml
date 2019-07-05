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
show_debug_message(global.roundEnd);
if (global.roundEnd == false)
{
	if !(instance_exists(obj_survivalSystem.sEnemy)) and !(instance_exists(obj_spawnObjectSurvival))
	{
		if (alarm[2] = -1) and (awardScore == false)
		{
			alarm[2] = 60;
		}	
		global.roundEnd = true;
	}
}

//show bonus, multiplier and award score
if (awardScore == true)
{
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
		if (global.roundBonus > 0)
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
			}
		}
	}
}
/// @description Insert description here
// You can write your code in this editor

//starts awarding score after a 1s delay

//gameActive variable to track when action is happening
if (instance_exists(obj_survivalSystem.sEnemy) or instance_exists(obj_survivalSystem.sEnemy2)){
	enemyExists = true;
}else enemyExists = false;

if (instance_exists(obj_player1) and (enemyExists == true))
{
	gameActive = true;
}
else gameActive = false;

if (gameActive == true)
{
	roundTime++
	global.roundBonus = round(max(100, ((global.roundNumber * 100) - (roundTime/30))));
}


//checks for enemies and spawn objects - starts awarding score after a 2s delay, sets startBonus for multiplying

if (global.roundEnd == false)
{
	if (!enemyExists) and (!instance_exists(obj_spawnObjectSurvival))
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
	/*
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
	*/
	
	///awarding score
	if (countMulti > 1)		//applied multiplier to round bonus
	{
		var multiDelay = 20;
		addBonus = false;
		//if keyboard_check(global.p1Fire){
			//multiDelay = 5;
			//global.roundBonus = (countMulti * startBonus);
			//countMulti = 1;
		//}
		if (alarm[3] = -1){							//alarm 3 adds round bonus repeats according to multiplier
			alarm[3] = multiDelay;
		}
	}
	
	if (alarm[4] = -1) and (countMulti <= 1){		//delays 60 before adding round bonus to score
		alarm[4] = 60;
	}
	
	//if (alarm[4] > 0) and (keyboard_check(global.p1Fire)){
	//	if (countMulti <= 1){
	//		addBonus = true;
	//	}
	//}
	if (addBonus == true)			//add bonus points to score
	{
		if (global.roundBonus > 0)
		{
			//if (!keyboard_check(global.p1Fire)){
			//	if global.roundBonus > 1000 scrInc = 100;
			//	if global.roundBonus > 10000 scrInc = 1000;
			//}else{
			//	scrInc = scrInc * 1.1;
			//}
			scrInc = max(10, floor(global.roundBonus * 0.1));	//increase scrInc in propotion to round bonus, min 10
			var targetScore = score + global.roundBonus;
			score = round(min(score + scrInc, targetScore));
			global.roundBonus = round(max(global.roundBonus - scrInc, 0));
		}
		else
		//initiate next round
		{	
			
			timer++
			if (timer>120)
			{
				if (alarm[1] = -1)
				{
					alarm[1] = 120;
					addBonus = false;
					awardScore = false;
					//gamePaused = false;
					displayRoundChanges = true;
					global.roundNumber++;
					global.checkProgress = true;    //checks progress in globVar
					global.multiplier = startMulti;
					global.multiplier++;
					global.roundBonus = round(max(100, ((global.roundNumber * 100))))
				}
			}
		}
	}
}

/*
if (gamePaused == false)
{
	instance_activate_all();
}
*/

//code for pulsing warnings - set alpha value to pulse
//if(displayRoundChanges == true){
	sin_value += (pi*2)/steps_per_cycle
	if (sin_value >= pi*2) sin_value = 0;
	pulse = sin(sin_value);
	pulse = sign(pulse)*pulse;
//}
/// @description Insert description here
// You can write your code in this editor
if(global.gameType == gameType.survival)
{
	var arrayRound = min(array_height_2d(global.survivalRoundSpecs) -1, global.roundNumber - 1);
	if(astNumber != global.survivalRoundSpecs[arrayRound,4])
	{
		astNumber = global.survivalRoundSpecs[arrayRound,4];
	}
}
if(global.gameType == gameType.oneDuel) or (global.gameType == gameType.twoDuel)
{
	if(rollAstNumber == true)
	{
		astNumber = irandom_range(1,4);
		rollAstNumber = false;
	}
}

if (instance_number(obj_asteroidBig) < astNumber) and (alarm[0] =-1)
	{
		alarm[0] = random_range(120, 500);
	}


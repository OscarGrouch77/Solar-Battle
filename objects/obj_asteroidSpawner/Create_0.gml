/// @description Insert description here
// You can write your code in this editor
alarm[0] = random_range(120, 500);
if(global.gameType == gameType.survival)
{
	var arrayRound = global.roundNumber - 1;
	astNumber = global.survivalRoundSpecs[arrayRound,4];
}
if(global.gameType == gameType.oneDuel) or (global.gameType == gameType.twoDuel)
{
	rollAstNumber = true;
}
/// @description Insert description here
// You can write your code in this editor

global.gravitationalConstant = 2000;
global.scorePlayer1 = 0;
global.scorePlayer2 = 0;
global.scoreCpu = 0;
global.roundNumber = 1;
global.difficulty = 0;
global.preRoom = room;

enum gameType
{
	oneDuel,
	twoDuel,
	survival,
}

global.gameType = gameType.oneDuel;


/// @description Insert description here
// You can write your code in this editor
target = undefined;

switch (global.gameType)
{
	case gameType.oneDuel: target = rm_game1p; break;
	case gameType.twoDuel: target = rm_game2p; break;
	case gameType.survival: target = rm_gameSurvival; break;
}
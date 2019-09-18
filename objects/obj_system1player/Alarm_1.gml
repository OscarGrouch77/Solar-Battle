/// @description checks for player 2 victory
// You can write your code in this editor


if (instance_exists(obj_player1))
{
	winner = 1;
	gameOver = true;
	takeSnapShot = true;
	global.scorePlayer1 += 1;
}
else
{
	winner = 0;
	gameOver = true;
	takeSnapShot = true;
}
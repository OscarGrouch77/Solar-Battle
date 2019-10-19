/// @description Insert description here
// You can write your code in this editor


gameOver = true;

survivedRounds = global.roundNumber - 1;

if (score > highscore_value(10))
{
	instance_create_layer(room_width/2, room_height/2 + 270, "UI", obj_inputName);
}
else
{
	instance_create_layer(x,y, "UI", obj_menuButtonExit);
	instance_create_layer(x,y, "UI", obj_menuButtonTryAgain);
}

/// @description Insert description here
// You can write your code in this editor


gameOver = true;

survivedRounds = global.roundNumber - 1;
instance_create_layer(x,y, "Instances", obj_menuButtonExit);
instance_create_layer(x,y, "Instances", obj_menuButtonTryAgain);

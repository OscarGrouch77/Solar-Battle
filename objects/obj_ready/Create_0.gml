/// @description pauses the game and gives countdown at start
// You can write your code in this editor

getReady = false;

readySetGo = 1;

alarm[0] = 60;
alarm[3] = 10;
textScale = 0;
textAlpha = 0.1;
screenShot = -1;
if(sprite_exists(screenShot))
{
	sprite_delete(screenShot);
}
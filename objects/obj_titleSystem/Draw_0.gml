/// @description Insert description here
// You can write your code in this editor

if (confirmQuit)
{
	confirm = true;
	quit = scr_drawConfirm("QUIT GAME?");
	if (confirm == false) confirmQuit = false;
}
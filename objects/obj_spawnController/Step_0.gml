/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left))
{
	scr_spawn(mouse_x, mouse_y);
	spawnX = mouse_x;
	spawnY = mouse_y;
	spawning = true;
	timer = 0;
}

if (timer < 100) and (spawning == true)
{
	spawnRNG = irandom(100);
	if (spawnRNG > 100 - timer)
	{
		scr_spawn(spawnX, spawnY);
	}
}

if (timer >= 180) spawning = false;

timer++



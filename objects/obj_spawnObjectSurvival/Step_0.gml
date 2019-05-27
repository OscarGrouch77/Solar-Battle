/// @description Insert description here
// You can write your code in this editor



if (timer < 80) and (spawning == true)
{
	spawnRNG = irandom(80);
	if (spawnRNG > 80 - timer)
	{
		scr_spawn(spawnX, spawnY);
	}
}

if (timer >= spawnTime) 
{
	spawning = false;
	instance_create_layer(spawnX, spawnY, "Instances", obj_survivalSystem.sEnemy);
	instance_destroy();
}

if (timer > 80) image_speed = 0.77;
if (image_index > 8) image_index = 8;

timer++



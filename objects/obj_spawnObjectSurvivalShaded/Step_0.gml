/// @description Insert description here
// You can write your code in this editor

switch(spawnInstance)		//gets sprite of spawnInstance and sets as own sprite
{
	case obj_cpuSurvivalEasy: sprite_index = spr_longbow; break;
	case obj_cpuSurvivalEasy2: sprite_index = spr_brawler; break;
	case obj_cpuSurvivalStd: sprite_index = spr_arachnid; break;
	case obj_cpuSurvivalHard: sprite_index = spr_arachnid; break;
}
x_offset = sprite_xoffset/sprite_width;
y_offset = sprite_yoffset/sprite_height;
spawnProgress = timer/spawnTime;	//normalising (0.0 - 1.0) timer for shader

//creates spawn flares using scr_spawn RNG to manage timing of flares
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
	instance_create_layer(spawnX, spawnY, "Instances", spawnInstance);
	instance_destroy();
}

if (timer > 80) image_speed = 0.77;
if (image_index > 8) image_index = 8;

timer++



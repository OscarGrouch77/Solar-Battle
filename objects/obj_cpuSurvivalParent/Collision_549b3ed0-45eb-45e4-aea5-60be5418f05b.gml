/// @description Insert description here
// You can write your code in this editor

powerUp = irandom(3);



if (powerUp == 0)
{
	instance_create_layer(x, y - 16, "Ambient", obj_shieldText);
	if (shield == false) instance_create_layer(x, y, "Ambient", obj_cpuShield);
	shield = true;
}




if (powerUp == 1)
{
	instance_create_layer(x, y - 16, "Ambient", obj_doubleText);
	double = true;
}



if (powerUp == 2) 
{
	instance_create_layer(x, y - 16, "Ambient", obj_supercoolText);
	supercool = true;
}

if (powerUp == 3)
{
	instance_create_layer(x, y - 16, "Ambient", obj_missileText);
	missileAmmo += 2;
	missile = true;
}


powerUp = -1

with other instance_destroy();
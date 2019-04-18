/// @description Insert description here
// You can write your code in this editor



powerUp = irandom(2);



if (powerUp == 0)
{
	instance_create_layer(x, y - 16, "Ambient", obj_shieldText);
	if (shield == false) instance_create_layer(x, y, "Ambient", obj_player2Shield);
	shield = true;
	alarm[2] = 1800;
}




if (powerUp == 1)
{
	instance_create_layer(x, y - 16, "Ambient", obj_doubleText);
	double = true;
	alarm[3] = 1800;
}



if (powerUp == 2) 
{
	instance_create_layer(x, y - 16, "Ambient", obj_supercoolText);
	supercool = true
	alarm[4] = 1800;
}

if (powerUp == 3)
{
	instance_create_layer(x, y - 16, "Ambient", obj_laserText);
	if (laser == false)
	{
		instance_create_layer(x + lengthdir_x(8, image_angle), y + lengthdir_y(8, image_angle), "Ambient", obj_laser2);
	}
	laser = true;
	alarm[5] = 1800;
}

powerUp = -1

with other instance_destroy()
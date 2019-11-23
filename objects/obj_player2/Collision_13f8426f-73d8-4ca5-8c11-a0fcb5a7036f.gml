/// @description Insert description here
// You can write your code in this editor



powerUp = irandom(3);



if (powerUp == 0)
{
	if (shield == false)
	{
		instance_create_layer(x, y - 16, "Ambient", obj_shieldText);
		var myShield = instance_create_layer(x, y, "Ambient", obj_genericShield);
		myShield.owner = self;
		shield = true;
	}
	else
	{
		healing = true; 
		instance_create_layer(x, y - 16, "Ambient", obj_repairText);
	}
}




if (powerUp == 1)
{
	if (double == false)
	{
		instance_create_layer(x, y - 16, "Ambient", obj_doubleText);
		double = true;
	}
	else
	{
		healing = true; 
		instance_create_layer(x, y - 16, "Ambient", obj_repairText);
	}
}



if (powerUp == 2) 
{
	if (supercool == false)
	{
		instance_create_layer(x, y - 16, "Ambient", obj_supercoolText);
		supercool = true;
	}
	else
	{
		healing = true; 
		instance_create_layer(x, y - 16, "Ambient", obj_repairText);
	}
}

if (powerUp == 3)
{
	//longbow code for EMP replaces missile code
	if(sprite_index == spr_longbow)
	{
		if (empAmmo < 8)
		{
			instance_create_layer(x, y - 16, "Ambient", obj_empText);
			empAmmo = min(empAmmo + 2, 8);
			emp = true;
		}
		else
		{	
			healing = true; 
			instance_create_layer(x, y - 16, "Ambient", obj_repairText);
		}
	}
	else
	{
		if (missileAmmo < 8)
		{
			instance_create_layer(x, y - 16, "Ambient", obj_missileText);
			missileAmmo = min(missileAmmo + 2, 8);
			missile = true;
		}
		else
		{
			healing = true; 
			instance_create_layer(x, y - 16, "Ambient", obj_repairText);
		}
	}
}

powerUp = -1

with other instance_destroy()
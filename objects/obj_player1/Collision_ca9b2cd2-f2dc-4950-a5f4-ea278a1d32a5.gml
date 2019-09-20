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
		switch (global.gameType)
		{
			case gameType.survival: score = score + (global.roundNumber * 1000); instance_create_layer(x, y - 16, "Ambient", obj_1000Text); break;
			case gameType.oneDuel: healing = true; instance_create_layer(x, y - 16, "Ambient", obj_repairText); break;
			case gameType.twoDuel: healing = true; instance_create_layer(x, y - 16, "Ambient", obj_repairText); break;
		}
	}
	//alarm[2] = 1800;
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
		switch (global.gameType)
		{
			case gameType.survival: score = score + (global.roundNumber * 1000); instance_create_layer(x, y - 16, "Ambient", obj_1000Text); break;
			case gameType.oneDuel: healing = true; instance_create_layer(x, y - 16, "Ambient", obj_repairText); break;
			case gameType.twoDuel: healing = true; instance_create_layer(x, y - 16, "Ambient", obj_repairText); break;
		}
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
		switch (global.gameType)
		{
			case gameType.survival: score = score + (global.roundNumber * 1000); instance_create_layer(x, y - 16, "Ambient", obj_1000Text); break;
			case gameType.oneDuel: healing = true; instance_create_layer(x, y - 16, "Ambient", obj_repairText); break;
			case gameType.twoDuel: healing = true; instance_create_layer(x, y - 16, "Ambient", obj_repairText); break;
		}
	}
}

if (powerUp == 3)
{
	if (missileAmmo < 8)
	{
		instance_create_layer(x, y - 16, "Ambient", obj_missileText);
		missileAmmo = min(missileAmmo + 2, 8);
		missile = true;
	}
	else
	{
		switch (global.gameType)
		{
			case gameType.survival: score = score + (global.roundNumber * 1000); instance_create_layer(x, y - 16, "Ambient", obj_1000Text);break;
			case gameType.oneDuel: healing = true; instance_create_layer(x, y - 16, "Ambient", obj_repairText);break;
			case gameType.twoDuel: healing = true; instance_create_layer(x, y - 16, "Ambient", obj_repairText);break;
		}
	}
}
	


powerUp = -1

with other instance_destroy();
/// @description Insert description here
// You can write your code in this editor

//set position of thruisters relative to player
with (cpuShipThrust1)
	{
		x = other.x + lengthdir_x(5, other.image_angle - 90) + lengthdir_x(16, other.image_angle - 180);
		y = other.y + lengthdir_y(16, other.image_angle - 180) + lengthdir_y(5, other.image_angle - 90);
		image_angle = other.image_angle;
	}

with (cpuShipThrust2)
	{
		x = other.x + lengthdir_x(5, other.image_angle + 90) + lengthdir_x(16, other.image_angle - 180);
		y = other.y + lengthdir_y(16, other.image_angle - 180) - lengthdir_y(5, other.image_angle - 90);
		image_angle = other.image_angle;
	}

//dispaly thruster if thrusting

if (thrusting = true)
{

	with (cpuShipThrust1)
	{
		if (other.hp==3)
		{
			image_speed = 1;
			if image_index == 4 image_index = 0;
		}
		else
		{
			if image_index == 4 image_index = 0;
			if irandom_range(1,6) == 1 image_index = 5;
		}
	}

	with (cpuShipThrust2)
	{
		if (other.hp==3) or (other.hp==2)
		{
			image_speed = 1;
			if image_index == 4 image_index = 0;
		}
		else
		{
			if image_index == 4 image_index = 0;
			if irandom_range(1,6) == 1 image_index = 5;
		}
		
	}

}
else
{
	with (cpuShipThrust1) image_index = 5;
	with (cpuShipThrust2) image_index = 5;
}

//smoke trail

if (hp ==2)
{
	with (cpuShipThrust1)
	{
		scr_smokeTrail(x+ random_range(-3, 3), y+ random_range(-3, 3));
	}
}

if (hp ==1)
{
	with (cpuShipThrust1)
	{
		scr_smokeTrail(x+ random_range(-3, 3), y+ random_range(-3, 3));
		scr_smokeTrail(x+ random_range(-3, 3), y+ random_range(-3, 3));
	}
	with (cpuShipThrust2)
	{
		scr_smokeTrail(x+ random_range(-3, 3), y+ random_range(-3, 3));
		scr_smokeTrail(x+ random_range(-3, 3), y+ random_range(-3, 3));
	}
}


		
		
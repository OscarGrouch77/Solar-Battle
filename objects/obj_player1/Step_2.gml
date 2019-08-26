/// @description Insert description here
// You can write your code in this editor

//sets position of thrusters relative to ship

with (player1Thrust1)
	{
		x = other.x + lengthdir_x(5, other.image_angle - 90) + lengthdir_x(20, other.image_angle - 180);
		y = other.y + lengthdir_y(20, other.image_angle - 180) + lengthdir_y(5, other.image_angle - 90);
		image_angle = other.image_angle;
	}

with (player1Thrust2)
	{
		x = other.x + lengthdir_x(5, other.image_angle + 90) + lengthdir_x(20, other.image_angle - 180);
		y = other.y + lengthdir_y(20, other.image_angle - 180) - lengthdir_y(5, other.image_angle - 90);
		image_angle = other.image_angle;
	}

//display thruster if thrusting

if keyboard_check(ord("W"))
{

	with (player1Thrust1)
	{
		if (other.hp >= 3)
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

	with (player1Thrust2)
	{
		if (other.hp >= 2)
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
	with (player1Thrust1) image_index = 5;
	with (player1Thrust2) image_index = 5;
}

//smoke trails

if (hp ==2)
{
	with (player1Thrust1)
	{
		scr_smokeTrail(x + random_range(-3, 3), y + random_range(-3, 3));
	}
}

if (hp ==1)
{
	with (player1Thrust1)
	{
		scr_smokeTrail(x + random_range(-3, 3), y+ random_range(-3, 3));
		scr_smokeTrail(x+ random_range(-3, 3), y+ random_range(-3, 3));
	}
	with (player1Thrust2)
	{
		scr_smokeTrail(x+ random_range(-3, 3), y+ random_range(-3, 3));
		scr_smokeTrail(x+ random_range(-3, 3), y+ random_range(-3, 3));
	}
}
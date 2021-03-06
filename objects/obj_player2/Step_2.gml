/// @description Insert description here
// You can write your code in this editor


//set position of thruisters relative to player
with (player2Thrust1)
	{
		x = other.x + lengthdir_x(other.thrustYOffset, other.image_angle - 90) + lengthdir_x(other.thrustXOffset, other.image_angle - 180);
		y = other.y + lengthdir_y(other.thrustXOffset, other.image_angle - 180) + lengthdir_y(other.thrustYOffset, other.image_angle - 90);
		image_angle = other.image_angle;
	}

with (player2Thrust2)
	{
		x = other.x + lengthdir_x(other.thrustYOffset, other.image_angle + 90) + lengthdir_x(other.thrustXOffset, other.image_angle - 180);
		y = other.y + lengthdir_y(other.thrustXOffset, other.image_angle - 180) - lengthdir_y(other.thrustYOffset, other.image_angle - 90);
		image_angle = other.image_angle;
	}

//dispaly thruster if thrusting

if keyboard_check(global.p2Thrust) && (disabled == false)
{

	with (player2Thrust1)
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

	with (player2Thrust2)
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
	with (player2Thrust1) image_index = 5;
	with (player2Thrust2) image_index = 5;
}

//smoke trail

if (hp ==2)
{
	with (player2Thrust1)
	{
		scr_smokeTrail(x + lengthdir_x(4, other.image_angle) + random_range(-3, 3), y + lengthdir_y(4, other.image_angle) + random_range(-3, 3));
	}
}

if (hp ==1)
{
	with (player2Thrust1)
	{
		scr_smokeTrail(x + lengthdir_x(4, other.image_angle) + random_range(-3, 3), y + lengthdir_y(4, other.image_angle) + random_range(-3, 3));	
	}
	with (player2Thrust2)
	{
		scr_smokeTrail(x + lengthdir_x(4, other.image_angle) + random_range(-3, 3), y + lengthdir_y(4, other.image_angle) + random_range(-3, 3));
	}
}

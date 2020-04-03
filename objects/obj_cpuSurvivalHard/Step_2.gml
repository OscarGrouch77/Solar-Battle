/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (hp ==2)
{
	with (cpuDemo1Thrust1)
	{
		scr_smokeTrail(x+ random_range(-3, 3), y+ random_range(-3, 3));
	}
}

if (hp ==1)
{
	with (cpuDemo1Thrust1)
	{
		scr_smokeTrail(x+ random_range(-3, 3), y+ random_range(-3, 3));
		scr_smokeTrail(x+ random_range(-3, 3), y+ random_range(-3, 3));
	}
	with (cpuDemo1Thrust2)
	{
		scr_smokeTrail(x+ random_range(-3, 3), y+ random_range(-3, 3));
		scr_smokeTrail(x+ random_range(-3, 3), y+ random_range(-3, 3));
	}
}
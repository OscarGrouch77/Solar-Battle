/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player1))
{
	if (obj_player1.shootAble == false)
	{
		sin_value += (pi*2)/steps_per_cycle;
		if (sin_value >= pi*2) sin_value = 0;
		pulse = sin(sin_value);
		pulse = sign(pulse)*pulse;
	}
}
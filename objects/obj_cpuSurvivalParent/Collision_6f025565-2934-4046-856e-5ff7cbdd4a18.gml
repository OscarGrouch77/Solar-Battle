/// @description Insert description here
// You can write your code in this editor

if (other.owner != self)
{
	disabled = true;
	if (alarm[4] == -1)
	{
		rotDrift = sign(rotate)* random_range(0, 1);
		alarm[4] = 360;
	}
}
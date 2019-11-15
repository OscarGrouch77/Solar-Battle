/// @description Insert description here
// You can write your code in this editor

if (other.owner != self)
{
	disabled = true;
	if (alarm[6] == -1)
	{
		rotDrift = sign(keyboard_check(global.p2Left) - keyboard_check(global.p2Right))* random_range(0, 1);
		alarm[6] = 360;
	}
}
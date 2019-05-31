/// @description Insert description here
// You can write your code in this editor

if !(other.owner = self)
{
	if (shield == false)
	{
		hp -= 1;
		if hp > 0 motion_add(other.direction, 1.5);
	}
	else shield = false;

	with other
	{
		instance_destroy();
	}
}

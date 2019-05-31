/// @description Insert description here
// You can write your code in this editor

if (instance_exists(owner))
{
	if (owner.shield = false)
	{
		instance_destroy();
	}
}
else instance_destroy();
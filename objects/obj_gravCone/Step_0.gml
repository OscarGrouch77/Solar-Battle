/// @description Insert description here
// You can write your code in this editor

if!(instance_exists(owner))
{
	instance_destroy();
}

if (instance_exists(owner))
{
	if (owner.gravConeExists == false)
	{
		instance_destroy();
	}
}


/// @description Insert description here
// You can write your code in this editor

if (owner = obj_cpuSurvivalParent)
{
	sprite_index = spr_bullet1;
}

glow = instance_create_layer(x, y, "Ambient", obj_bulletGlow)
with glow
{
	owner = other.id;
}

alarm[0] = bulletLife;

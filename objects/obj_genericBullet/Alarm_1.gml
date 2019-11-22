/// @description Insert description here
// You can write your code in this editor



if(instance_exists(owner))
{
	alarm[0] = owner.bulletLife;
	if (owner == obj_cpuSurvivalParent) or (owner == obj_cpuDuelParent)
	{
		sprite_index = spr_bullet1;
	}
	if(owner.sprite_index == spr_longbow) && (owner.bulletSpeed >= 150)
	{
		sprite_index = spr_railBullet;
	}
}
else alarm[0] = bulletLife;


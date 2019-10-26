/// @description Insert description here
// You can write your code in this editor


if(instance_exists(owner))
{
	alarm[0] = owner.bulletLife;
	if(owner.sprite_index == spr_longbow)
		{
			sprite_index = spr_railBullet;
		}
}
else alarm[0] = bulletLife;


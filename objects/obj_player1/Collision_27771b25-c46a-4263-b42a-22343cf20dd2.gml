/// @description Insert description here
// You can write your code in this editor

debris = instance_create_layer(x, y, "bottomParticle", obj_particleSysDebris1);
avHspeed = (hspeed + other.hspeed)/2;
avVspeed = (vspeed + other.vspeed)/2;
with debris
{
	avHspeed = other.avHspeed;
	avVspeed = other.avVspeed;
}
alarm[5] = 1;

scr_hit(x,y);
hp = 0;
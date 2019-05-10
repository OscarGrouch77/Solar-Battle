/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x, y, "bottomParticle", obj_particleSysDebris1);
scr_debrisExplosion1(x,y);
scr_hit(x,y);
hp = 0;
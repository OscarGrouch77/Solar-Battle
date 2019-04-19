/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left))
{
	instance_create_layer(mouse_x, mouse_y, "bottomParticle", obj_particleSysDebris1);
	scr_debrisExplosion1(mouse_x,mouse_y);
}
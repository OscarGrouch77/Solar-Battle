/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button(mb_left))
{
	if !(instance_exists(obj_partSysHealthGain))
	{
		instance_create_layer(x, y, "topParticle", obj_partSysHealthGain);
	}
	scr_healthGain(mouse_x, mouse_y);
}
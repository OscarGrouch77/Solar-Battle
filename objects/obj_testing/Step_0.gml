/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left))
{
	if !(instance_exists(obj_genericEmp))
	{
		instance_create_layer(x, y, "topParticle", obj_genericEmp);
	}
}
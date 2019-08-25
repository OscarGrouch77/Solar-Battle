/// @description Insert description here
// You can write your code in this editor


glow = instance_create_layer(x, y, "Ambient", obj_thrustGlow)
with glow
{
	owner = other.id;
}
/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_escape))
{
	game_end();
}

if (egg == true) and !(instance_exists(obj_spawnObjectP1)) and !(instance_exists(obj_cpuDemo1))
{
	do
	{
		randX1 = irandom(room_width);
		randY1 = irandom(room_height);
	}
	until (point_distance(randX1, randY1, obj_sun.x, obj_sun.y) > 200) 
	instance_create_layer(randX1, randY1, "topParticle", obj_spawnObjectP1);
}


if (egg == true) and !(instance_exists(obj_spawnObjectP2)) and !(instance_exists(obj_cpuDemo2))
{	
	do
	{
		randX2 = irandom(room_width);
		randY2 = irandom(room_height);
	}
	until (point_distance(randX2, randY2, obj_sun.x, obj_sun.y) > 200) 
	instance_create_layer(randX2, randY2, "topParticle", obj_spawnObjectP2);	
}

if (point_in_rectangle(mouse_x, mouse_y, obj_sun.x - 30, obj_sun.y - 30, obj_sun.x + 30, obj_sun.y + 30))
{
	if (mouse_check_button_pressed(mb_left))
	{
		egg = true;
	}
}
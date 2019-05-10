/// @description Insert description here
// You can write your code in this editor

player2ExplosionBot = part_system_create_layer("bottomParticle", false);
player2ExplosionTop = part_system_create_layer("topParticle", false);


//get direction and speed of player at moment of destruction
astDirection = obj_cpuDemo2.direction;
astSpeed = obj_cpuDemo2.speed;
expx = obj_cpuDemo2.x;
expy = obj_cpuDemo2.y;


particle1 = part_type_create();
part_type_shape(particle1, pt_shape_explosion);
part_type_color2(particle1, c_gray, c_black);
part_type_alpha2(particle1, 0.8, 0);
part_type_direction(particle1, astDirection+0.1, astDirection-0.1, 0, 0);
part_type_life(particle1, 120, 180);
part_type_size(particle1, 0.02, 0.02, 0.02, 0.01);
part_type_speed(particle1, astSpeed-0.5, astSpeed+0.5, -0.01, 0.05);
part_type_blend(particle1, false);
part_type_orientation(particle1, 0, 359, random_range(-1, 1), 0, false);

particle2 = part_type_create();
part_type_shape(particle2, pt_shape_explosion);
part_type_color2(particle2, c_orange, c_black);
part_type_alpha2(particle2, 0.6, 0);
part_type_direction(particle2, astDirection+0.1, astDirection-0.1, 0, 0);
part_type_life(particle2, 60, 140);
part_type_size(particle2, 0.05, 0.05, 0.01, 0.02);
part_type_speed(particle2, astSpeed-0.2, astSpeed+0.2, -0.01, 0.05);
part_type_blend(particle2, true);
part_type_orientation(particle2, 0, 359, random_range(-2, 2), 1, false);

particle3 = part_type_create();
part_type_shape(particle3, pt_shape_explosion);
part_type_color2(particle3, c_red, c_black);
part_type_alpha2(particle3, 0.6, 0);
part_type_direction(particle3, astDirection+0.1, astDirection-0.1, 0, 0);
part_type_life(particle3, 60, 140);
part_type_size(particle3, 0.08, 0.08, 0.01, 0.01);
part_type_speed(particle3, astSpeed-0.2, astSpeed+0.2, -0.01, 0.05);
part_type_blend(particle3, true);
part_type_orientation(particle3, 0, 359, random_range(-2, 2), 1, false);



alarm[1] = 40;


alarm[0] = 360;








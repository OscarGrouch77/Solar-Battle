/// @description Insert description here
// You can write your code in this editor

player2ExplosionTop2 = part_system_create_layer("topParticle", false);

particle4 = part_type_create();
part_type_shape(particle4, pt_shape_explosion);
part_type_color2(particle4, c_orange, c_black);
part_type_alpha2(particle4, 0.6, 0);
part_type_direction(particle4, astDirection+0.1, astDirection-0.1, 0, 0);
part_type_life(particle4, 60, 140);
part_type_size(particle4, 0.05, 0.05, 0.02, 0.02);
part_type_speed(particle4, astSpeed-0.2, astSpeed+0.2, -0.01, 0.05);
part_type_blend(particle4, true);
part_type_orientation(particle4, 0, 359, random_range(-2, 2), 1, false);

scr_cpuShipExplosion2(expx + lengthdir_x(astSpeed*40, astDirection),expy + lengthdir_y(astSpeed*40, astDirection));
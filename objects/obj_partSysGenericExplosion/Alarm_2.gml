/// @description Insert description here
// You can write your code in this editor

genExpBot = part_system_create_layer("bottomParticle", false);
genExpTop = part_system_create_layer("topParticle", false);

particle1 = part_type_create();
part_type_shape(particle1, pt_shape_smoke);
part_type_color2(particle1, c_gray, c_black);
part_type_alpha2(particle1, 0.8, 0);
part_type_direction(particle1, expDir-1, expDir+1, 0, 0);
part_type_life(particle1, 120, 180);
part_type_size(particle1, 0.08, 0.08, 0.025, 0.01);
part_type_speed(particle1, expSpeed*0.9, expSpeed*1.1, -0.01, 0.05);
part_type_blend(particle1, false);
part_type_orientation(particle1, 0, 359, random_range(-1, 1), 0.5, false);

particle2 = part_type_create();
part_type_shape(particle2, pt_shape_explosion);
part_type_color3(particle2, c_white, c_orange, c_black);
part_type_alpha2(particle2, 0.6, 0);
part_type_direction(particle2, expDir+0.1, expDir-0.1, 0, 0);
part_type_life(particle2, 60, 140);
part_type_size(particle2, 0.2, 0.2, 0.02, 0.02);
part_type_speed(particle2, expSpeed-0.2, expSpeed+0.2, -0.01, 0.05);
part_type_blend(particle2, true);
part_type_orientation(particle2, 0, 359, random_range(-1, 1), 1, false);

particle3 = part_type_create();
part_type_shape(particle3, pt_shape_explosion);
part_type_color3(particle3, c_white, c_red, c_black);
part_type_alpha2(particle3, 0.6, 0);
part_type_direction(particle3, expDir+0.1, expDir-0.1, 0, 0);
part_type_life(particle3, 60, 140);
part_type_size(particle3, 0.32, 0.32, 0.03, 0.023);
part_type_speed(particle3, expSpeed-0.2, expSpeed+0.2, -0.01, 0.05);
part_type_blend(particle3, true);
part_type_orientation(particle3, 0, 359, random_range(-1, 1), 1, false);

scr_genericExplosion(x, y, me.genExpBot, me.genExpTop, 
me.particle1, me.particle2);
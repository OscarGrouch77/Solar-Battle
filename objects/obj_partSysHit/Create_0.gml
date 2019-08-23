/// @description hit effect


bulletHit = part_system_create_layer("topParticle", false);

hit1 = part_type_create();

part_type_shape(hit1, pt_shape_spark);
part_type_color2(hit1, c_white, c_blue);
part_type_alpha2(hit1, 0.8, 0);
part_type_direction(hit1, 0, 359, 0, 35);
part_type_life(hit1, 40, 80);
part_type_size(hit1, 0.15, 0.2, -0.003, 0.02);
part_type_speed(hit1, 0, 4, -0.06, 0.2);
part_type_blend(hit1, true);
part_type_orientation(hit1, 0, 359, 0, 0, true);

hitGlow = part_type_create();

part_type_sprite(hitGlow, spr_blueGlow, 0, 0, 0);
part_type_color2(hitGlow, c_white, c_orange);
part_type_alpha2(hitGlow, 0.5, 0);
part_type_direction(hitGlow, 0, 359, 0, 35);
part_type_life(hitGlow, 40, 80);
part_type_size(hitGlow, 0.05, 0.2, -0.003, 0.02);
part_type_speed(hitGlow, 0, 4, -0.04, 0.1);
part_type_blend(hitGlow, true);



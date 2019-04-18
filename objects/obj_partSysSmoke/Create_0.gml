/// @description smoke trail
// You can write your code in this editor

smokeTrail = part_system_create_layer("bottomParticle", false);
smokeTrail2 = part_system_create_layer("topParticle", false);

smoke1 = part_type_create();

part_type_shape(smoke1, pt_shape_smoke);
part_type_color2(smoke1, c_ltgray, c_dkgray);
part_type_alpha2(smoke1, 0.8, 0);
part_type_direction(smoke1, 0, 359, 0, 50);
part_type_life(smoke1, 90, 120);
part_type_size(smoke1, 0.02, 0.04, 0.006, 0);
part_type_speed(smoke1, 0.2, 0.4, 0, 0);
part_type_blend(smoke1, false);
part_type_orientation(smoke1, 0, 359, 0, 0, true);

smoke2 = part_type_create();

part_type_shape(smoke2, pt_shape_smoke);
part_type_color2(smoke2, c_gray, c_black);
part_type_alpha2(smoke2, 0.9, 0);
part_type_direction(smoke2, 0, 359, 0, 50);
part_type_life(smoke2, 90, 120);
part_type_size(smoke2, 0.03, 0.06, 0.006, 0);
part_type_speed(smoke2, 0.1, 0.5, 0, 0);
part_type_blend(smoke2, false);
part_type_orientation(smoke2, 0, 359, 0, 0, true);

smoke3 = part_type_create();

part_type_shape(smoke3, pt_shape_smoke);
part_type_color2(smoke3, c_dkgray, c_black);
part_type_alpha2(smoke3, 0.3, 0);
part_type_direction(smoke3, 0, 359, 0, 50);
part_type_life(smoke3, 90, 120);
part_type_size(smoke3, 0.03, 0.06, 0.006, 0.003);
part_type_speed(smoke3, 0, 0.5, 0, 0);
part_type_blend(smoke3, true);
part_type_orientation(smoke3, 0, 359, 0, 0, true);

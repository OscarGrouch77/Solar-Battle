/// @description hit effect


healthGain = part_system_create_layer("topParticle", false);

cross = part_type_create();

part_type_sprite(cross, spr_healthCross, 0, 0, 0);
part_type_alpha2(cross, 0.7, 0);
part_type_gravity(cross, 0.05, 90)
part_type_direction(cross, 0, 180, 0, 10);
part_type_life(cross, 30, 80);
part_type_scale(cross, 1, 1);
part_type_size(cross, 0.2, 1, 0.001, 0);
part_type_speed(cross, 0, 0.5, 0, 0);
part_type_blend(cross, false);



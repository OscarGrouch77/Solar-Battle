/// @description EMP sparks


empSparks = part_system_create_layer("topParticle", false);

spark = part_type_create();

part_type_shape(spark, pt_shape_pixel);
part_type_alpha2(spark, 0.3, 0);
part_type_color2(spark, c_white, c_blue);
part_type_direction(spark, 0, 359, 0, 45);
part_type_orientation(spark, 0, 359, 0, 10, 0)
part_type_life(spark, 10, 30);
part_type_scale(spark, 1, 1);
part_type_size(spark, 1, 3, -0.01, 0.005);
part_type_speed(spark, 0.1, 0.05, 0, 0.05);
part_type_blend(spark, 1);


empSparkEm = part_emitter_create(empSparks);



/// @description Insert description here
// You can write your code in this editor

debrisExplosion = part_system_create_layer("bottomParticle", false);


// direction and speed
var avHspeed = (obj_cpuShip.hspeed + obj_player1.hspeed)/2;
var avVspeed = (obj_cpuShip.vspeed + obj_player1.vspeed)/2;

var P1Direction = point_direction(0,0,avHspeed,avVspeed);
var P1Speed = point_distance(0,0,avHspeed,avVspeed);


particle1 = part_type_create();
part_type_shape(particle1, pt_shape_explosion);
part_type_color3(particle1, c_ltgray, c_gray, c_black);
part_type_alpha2(particle1, 0.5, 0);
part_type_direction(particle1, P1Direction, P1Direction, 0, 10);
part_type_life(particle1, 60, 120);
part_type_size(particle1, 0.1, 0.2, 0.03, 0.01);
part_type_speed(particle1, P1Speed, P1Speed, -0.01, 0.05);
part_type_blend(particle1, true);
part_type_orientation(particle1, 0, 359, random_range(-1, 1), 0, false);

alarm[0] = 30






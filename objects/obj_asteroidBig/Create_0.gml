/// @description Insert description here
// You can write your code in this editor

sprite_index = choose(spr_asteroidBig, spr_asteroidBig2, spr_asteroid3, spr_asteroid4, spr_asteroid5, spr_asteroid6);

hp = 1;

speed = random_range(0.2,3);
direction = random_range(point_direction(x,y,obj_sun.x,obj_sun.y)-90,point_direction(x,y,obj_sun.x,obj_sun.y)+90);


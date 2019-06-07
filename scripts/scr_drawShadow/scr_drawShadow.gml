///@function drawShadow
///@argument x
///@argument y

xx = argument0;
yy = argument1;


xscale = 30 * ((point_distance(xx, yy, obj_sun.x, obj_sun.y)/room_width));
yscale = sprite_get_height(1)/64;
rotation = point_direction(xx, yy, obj_sun.x, obj_sun.y);
alpha = (1 - (point_distance(xx, yy, obj_sun.x, obj_sun.y)/room_width))/4;

draw_self();
draw_sprite_ext(spr_shadow3, 0, xx, yy, xscale, yscale, rotation, c_white, alpha);
draw_sprite_ext(spr_shadow2, 0, xx, yy, xscale, yscale-0.5, rotation, c_white, alpha/6);

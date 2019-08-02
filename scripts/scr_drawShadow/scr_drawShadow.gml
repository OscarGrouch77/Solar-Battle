///@function drawShadow
///@argument x
///@argument y

xx = argument0;
yy = argument1;

dirSun = point_direction(x, y, obj_sun.x, obj_sun.y);
distSun = point_distance(xx, yy, obj_sun.x, obj_sun.y);
xscale = max(30 * ((point_distance(xx, yy, obj_sun.x, obj_sun.y)/room_width)), 2);
yscale = sprite_get_height(1)/64;
rotation = point_direction(xx, yy, obj_sun.x, obj_sun.y);
alpha = (1 - (point_distance(xx, yy, obj_sun.x, obj_sun.y)/room_width))/8;


//finding x and y coords of the edge of the shadow
for(var i = 0; collision_line(obj_sun.x, obj_sun.y, self.x + lengthdir_x(i, dirSun + 90) + lengthdir_x(-20, dirSun), self.y + lengthdir_y(i, dirSun + 90) + lengthdir_y(20, dirSun + 180), self, true, false); i += 1)
{
	shad1x = self.x + lengthdir_x(i - 2, dirSun + 90);
	shad1y = self.y + lengthdir_y(i - 2, dirSun + 90);
}

for(var i = 0; collision_line(obj_sun.x, obj_sun.y, self.x + lengthdir_x(i, dirSun - 90) + lengthdir_x(-20, dirSun), self.y + lengthdir_y(i, dirSun - 90) + lengthdir_y(20, dirSun + 180), self, true, false); i += 1)
{
	shad2x = self.x + lengthdir_x(i - 2, dirSun - 90);
	shad2y = self.y + lengthdir_y(i - 2, dirSun - 90);
}


if (distSun > 1)
{
	scr_raycast(obj_sun.x, obj_sun.y, shad1x + lengthdir_x(-20, dirSun), shad1y + lengthdir_y(-20, dirSun), self);
	shadHP1x = hitpoint[0];
	shadHP1y = hitpoint[1];

	scr_raycast(obj_sun.x, obj_sun.y, shad2x + lengthdir_x(-20, dirSun), shad2y + lengthdir_y(-20, dirSun), self);
	shadHP2x = hitpoint[0];
	shadHP2y = hitpoint[1];
}

//Drawing circles for debugging
//draw_set_color(c_blue);
//draw_circle(shadHP1x, shadHP1y, 2, true);

//draw_set_color(c_red);
//draw_circle(shadHP2x, shadHP2y, 2, true);

xx = (shadHP1x + shadHP2x)/2 + lengthdir_x(-15, dirSun);
yy = (shadHP1y + shadHP2y)/2 + lengthdir_y(-15, dirSun);
yscale = point_distance(shad1x, shad1y, shad2x, shad2y)/64;

draw_sprite_ext(spr_shadow3, 0, xx, yy, xscale, yscale, rotation, c_white, alpha);
draw_sprite_ext(spr_shadow3, 0, xx, yy, xscale, yscale/2, rotation, c_white, alpha);

/// @description Insert description here
// You can write your code in this editor

x = mouse_x;
y = mouse_y;


scale = min(scale + 0.01, 5);
image_xscale = scale;
image_yscale = scale;
size			= sprite_width - (512 * scale); // 512 is about the distance from the wprite border to the lens border
half_size		= size * 0.5;

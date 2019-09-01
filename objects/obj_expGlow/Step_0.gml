/// @description Insert description here
// You can write your code in this editor

image_xscale = random_range(1.5,3) * fade;
image_yscale = random_range(1.5,3) * fade;



image_alpha = random_range(0.1, 1);
image_alpha = image_alpha * fade;
fade = max(0, fade - 0.007);
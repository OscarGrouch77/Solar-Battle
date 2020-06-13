/// @description Insert description here
// You can write your code in this editor
shader_set(shader);

shader_set_uniform_f(u_originX, x_offset);
shader_set_uniform_f(u_originY, y_offset);

shader_set_uniform_f(u_spawnProg, spawnProgress);

draw_self();

shader_reset();


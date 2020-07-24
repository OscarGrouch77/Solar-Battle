/// @description Insert description here
// You can write your code in this editor
var left	= x - half_size;
var top		= y - half_size;

// CREATE THE MAGNIFYING SURFACE:
if !surface_exists(srf)
srf = surface_create(size, size);
surface_set_target(srf);
draw_surface_part(application_surface, left, top, size, size, 0, 0);
surface_reset_target();

// DRAW THE MAGNIFYING EFFECT:
shader_set(shader);
shader_set_uniform_f(u_dir, image_angle);
shader_set_uniform_f(u_timer, timer);
shader_set_uniform_f(u_zoom1, zoom1);
shader_set_uniform_f(u_zoom2, zoom2);
shader_set_uniform_f(u_radius, radius);
shader_set_uniform_f(u_aberration, aberration);
shader_set_uniform_f(u_contrast, contrast);
shader_set_uniform_f(u_saturation, saturation);
shader_set_uniform_f(u_gamma, gamma);
//cone stuff
srf_tex = surface_get_texture(srf);
var uvs = texture_get_uvs(srf_tex);
shader_set_uniform_f(u_shader_uvs, uvs[0], uvs[1], 1/(uvs[2]-uvs[0]), 1/(uvs[3]-uvs[1]));
shader_set_uniform_f(u_vectorX, vectorX);
shader_set_uniform_f(u_vectorY, vectorY);
//surface draw stuff
gpu_set_tex_filter(true);
draw_surface(srf, left, top);
gpu_set_tex_filter(false);
shader_reset();



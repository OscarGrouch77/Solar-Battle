/// @description Insert description here
// You can write your code in this editor
/// @description draw magnifying glass

var left	= x - half_size;
var top		= y - half_size;


// CREATE THE MAGNIFYING SURFACE:

if surface_exists(srf)
	surface_free(srf);

srf = surface_create(size, size);
surface_set_target(srf);
draw_surface_part(application_surface, left, top, size, size, 0, 0);
surface_reset_target();

// DRAW THE MAGNIFYING EFFECT:
shader_set(shd_magnify);
shader_set_uniform_f(u_zoom1, zoom1);
shader_set_uniform_f(u_zoom2, zoom2);
shader_set_uniform_f(u_radius, radius);
shader_set_uniform_f(u_aberration, aberration);
shader_set_uniform_f(u_contrast, contrast);
shader_set_uniform_f(u_saturation, saturation);
shader_set_uniform_f(u_gamma, gamma);
gpu_set_tex_filter(true);
draw_surface(srf, left, top);
gpu_set_tex_filter(false);
shader_reset();


// DRAW THE MAGNIFYING GLASS:
draw_self();


// DRAW SPECULARS AND FOCUS:
//gpu_set_blendmode(bm_add);
//draw_sprite(spr_focal, 0, x, y);
//gpu_set_blendmode(bm_normal);


// DRAW INFO TEXT:
exit;
//draw_text(10, 10, "Q/A zoom1: " + string(zoom1));
//draw_text(10, 30, "W/S zoom2: " + string(zoom2));
//draw_text(10, 50, "E/D radius: " + string(radius));
//draw_text(10, 70, "R/F aberration: " + string_format(aberration,3,3));
//draw_text(10, 100, "T/G contrast: " + string(contrast));
//draw_text(10, 120, "Z/H saturation: " + string(saturation));
//draw_text(10, 140, "U/J gamma: " + string(gamma));

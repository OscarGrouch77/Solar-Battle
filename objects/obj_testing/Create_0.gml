/// @description Insert description here
// You can write your code in this editor

//cpu1Score = 0;
//cpu2Score = 0;

/// @description init

scale = 0.01;
image_xscale = scale;
image_yscale = scale;
// SPRITE & SURFACE:
size			= sprite_width - (512 * scale); // 64 is about the distance from the wprite border to the lens border
half_size		= size * 0.5;
srf				= -1;

// SHADER:
shader			= shd_magnify;
u_zoom1			= shader_get_uniform(shader, "zoom1");		// Changes how the zoom effect looks
u_zoom2			= shader_get_uniform(shader, "zoom2");		// Changes how the zoom effect looks
u_radius		= shader_get_uniform(shader, "radius");		// Changes how the zoom effect looks
u_aberration	= shader_get_uniform(shader, "aberration");	// strength of the chromatic aberration

u_contrast		= shader_get_uniform(shader, "contrast");
u_saturation	= shader_get_uniform(shader, "saturation");
u_gamma			= shader_get_uniform(shader, "gamma");

// DEMO VARIABLES:
zoom1			= 0.4;
zoom2			= 0.15;
radius			= 0.6;
aberration		= 0.06;

contrast		= 1.7;
saturation		= 0.75;
gamma			= 1.4;

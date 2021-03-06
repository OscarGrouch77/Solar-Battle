//
// Magnifying Glass fragment shader
//
/*-----------------------------------------------------------------------------
Magnifying Glass fragment shader: simulates a magnifying glass
Fragment Shader: Distort & Colourize
-------------------------------------------------------------------------------
_______________________________________________________________________________
INFO:
-------------------------------------------------------------------------------
Applies a magnifying glass effect to a surface.
Has to be used after everything you want to magnify is drawn already.
So i.e. in draw ened event.

- draw something to the surface (i.e. a part of the application surface
- draw that surface by this shader
- draw the magnifying glass sprite
- draw focus and specular in bm_add

_______________________________________________________________________________
UNIFORMS:
-------------------------------------------------------------------------------
uniform float zoom1			Changes the zoom effect
uniform float zoom2			Changes the zoom effect
uniform float radius		Changes the zoom effect
uniform float aberration	Chromatic Aberation strength
uniform float contrast		
uniform float saturation	
uniform float gamma			

See the constants inside the shader for reasonable settings of all uniforms.
	
_______________________________________________________________________________
EXAMPLE:
-------------------------------------------------------------------------------

Create event:
---------------------------------------
	size			= sprite_width - 64; // 64 is about the distance from the wprite border to the lens border
	half_size		= size * 0.5;
	srf				= -1;

	shader			= shd_magnifying_glass;
	u_zoom1			= shader_get_uniform(shader, "zoom1");		// Changes how the zoom effect looks
	u_zoom2			= shader_get_uniform(shader, "zoom2");		// Changes how the zoom effect looks
	u_radius		= shader_get_uniform(shader, "radius");		// Changes how the zoom effect looks
	u_aberration	= shader_get_uniform(shader, "aberration");	// strength of the chromatic aberration

	u_contrast		= shader_get_uniform(shader, "contrast");
	u_saturation	= shader_get_uniform(shader, "saturation");
	u_gamma			= shader_get_uniform(shader, "gamma");

	
Draw End event:
---------------------------------------
	var left	= x - half_size;
	var top		= y - half_size;


	// CREATE THE MAGNIFYING SURFACE:
	if !surface_exists(srf)
		srf = surface_create(size, size);
	surface_set_target(srf);
	draw_surface_part(application_surface, left, top, size, size, 0, 0);
	surface_reset_target();

	// DRAW THE MAGNIFYING EFFECT:
	shader_set(shd_magnifying_glass);
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
	gpu_set_blendmode(bm_add);
	draw_sprite(spr_focal, 0, x, y);
	gpu_set_blendmode(bm_normal);
*/


varying vec2 v_vTexcoord;
//varying vec4 v_vColour;

// if these settings don't need to be dynamic: remove the uniforms and implement the constants

uniform float zoom1;
uniform float zoom2;
uniform float radius;
uniform float aberration;
uniform float contrast;
uniform float saturation;
uniform float gamma;
//const float zoom1 = 0.4;
//const float zoom2 = 0.2;
//const float radius = 0.6;
//const float aberration = 0.05;
//const float contrast = 1.7;
//const float saturation = 0.75;
//const float gamma = 1.4;

void main() {	
	// GET MAGNIFY SAMPLE OFFSET FROM THE CENTRE:
	float dist				= length(v_vTexcoord - 0.5);								// distance to the center
	float angle				= atan(v_vTexcoord.y - 0.5, v_vTexcoord.x - 0.5);			// angle from the center
	float zoomed_radius		= dist * ((zoom2 * dist / radius) + zoom1);					// new radius to get the sample from
	vec2 offset				= vec2(cos(angle), sin(angle)) * zoomed_radius;				// offset from the center
	
	// MAGNIFY:
	vec2 sample				= 0.5 + offset;
	vec4 base_col			= texture2D(gm_BaseTexture, sample);
	
	//CIRCULAR STENCIL:
	base_col.a				= mix(base_col.a, 0.0, step(0.5, dist));					// if outside the circle: alpha = 0
	
	// CHROMATIC ABERRATION (optional, can be deleted without changing anything else):
	vec2 abr_dist			= (v_vTexcoord - 0.5) * (v_vTexcoord - 0.5) * aberration;	// square curve so there's no aberration at the center
	sample					= abr_dist + 0.5 + offset;
	vec3 col_magenta		= texture2D(gm_BaseTexture, sample).rgb;
	sample					= -abr_dist + 0.5 + offset;
	vec3 col_cyan			= texture2D(gm_BaseTexture, sample).rgb;
	base_col.rgb			= vec3(0.5, 0.5, 0.33) * base_col.rgb + vec3(0.5, 0.0, 0.33) * col_magenta + vec3(0.0, 0.5, 0.33) * col_cyan;
	
	
	// ADJUST COLOURS (optional, each of these adjustments can be removed without changing anything else):
	// gamma:
	base_col.rgb			= base_col.rgb = pow(base_col.rgb, vec3(1.0 / gamma));
	// contrast:
	base_col.rgb			= (base_col.rgb - 0.5) * contrast + 0.5;
	// saturation:
	float gray				= dot(base_col.rgb, vec3(0.33,0.33,00.33));
	base_col.rgb			= mix(vec3(gray), base_col.rgb, saturation);
	
	
	// OUTPUT:
	gl_FragColor			= base_col;
}

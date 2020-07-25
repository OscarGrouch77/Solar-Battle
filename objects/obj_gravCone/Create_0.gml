/// @description Insert description here
// You can write your code in this editor
image_yscale = 2;
image_xscale = 4;
image_alpha = 0.5;

xOffset = 0;
yOffset = 0;

//magnifying shader stuff
shd_angle = image_angle;						

vectorX = lengthdir_x(200, shd_angle);
vectorY = lengthdir_y(200, shd_angle);

size			= sprite_width * 2;
half_size		= size * 0.5;
srf				= -1;
zoom1			= 0.8;
zoom2			= 0.4;
radius			= 0.7;
aberration		= 0.02;
contrast		= 1.7;
saturation		= 1.3;
gamma			= 1.4;
timer = 0.0;


shader			= shd_gravWave;
u_dir			= shader_get_uniform(shader, "dir");		//direction cone is facing
u_timer			= shader_get_uniform(shader, "timer");		//timer for sine wave function
u_zoom1			= shader_get_uniform(shader, "zoom1");		// Changes how the zoom effect looks
u_zoom2			= shader_get_uniform(shader, "zoom2");		// Changes how the zoom effect looks
u_radius		= shader_get_uniform(shader, "radius");		// Changes how the zoom effect looks
u_aberration	= shader_get_uniform(shader, "aberration");	// strength of the chromatic aberration
u_contrast		= shader_get_uniform(shader, "contrast");
u_saturation	= shader_get_uniform(shader, "saturation");
u_gamma			= shader_get_uniform(shader, "gamma");

//cone uniforms
u_shader_uvs	= shader_get_uniform(shader, "uvs");		//uvs gives normalised coordinates in sprite
u_vectorX		= shader_get_uniform(shader, "vectorX");	//vectorX is the x componet of the vector representing the direction facing
u_vectorY		= shader_get_uniform(shader, "vectorY");	//vectorY is the y componet of the vector representing the direction facing




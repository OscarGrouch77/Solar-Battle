/// @description Insert description here
// You can write your code in this editor
x = 200;
y = 200;
owner = obj_player1;
maxScale = 1;
scale = 0.05;
image_xscale = scale;
image_yscale = scale;
alpha = 0.1;
image_alpha = 0;
lifeTime = 60;
alarm[0] = lifeTime;
timer = 0;
fade = false;
audio_play_sound(snd_emp, 1, 0);

//create part sys for sparks
empPartSys = instance_create_layer(x, y, "topParticle", obj_partSysEmpSparks);
empSparkEm = part_emitter_create(empPartSys.empSparks);
//particle emitter stuff
EMPMaxRad = 512;
//leftEdgeX = x - (EMPMaxRad*scale*0.49);
//rightEdgeX = x + (EMPMaxRad*scale*0.49);
//topEdgeY = y - (EMPMaxRad*scale*0.49);
//bottomEdgeY = y + (EMPMaxRad*scale*0.49);


//---SHADER STUFF------
//sprite and surface
size			= sprite_width - (512 * scale); // 512 is about the distance from the emp sprite border to the emp border
half_size		= size * 0.5;
srf				= -1;

shader			= shd_magnify;
u_zoom1			= shader_get_uniform(shader, "zoom1");		// Changes how the zoom effect looks
u_zoom2			= shader_get_uniform(shader, "zoom2");		// Changes how the zoom effect looks
u_radius		= shader_get_uniform(shader, "radius");		// Changes how the zoom effect looks
u_aberration	= shader_get_uniform(shader, "aberration");	// strength of the chromatic aberration

u_contrast		= shader_get_uniform(shader, "contrast");
u_saturation	= shader_get_uniform(shader, "saturation");
u_gamma			= shader_get_uniform(shader, "gamma");

//shader variables
zoom1			= 0.8;
zoom2			= 0.4;
radius			= 0.7;
aberration		= 0.02;

contrast		= 1.7;
saturation		= 0.75;
gamma			= 1.4;
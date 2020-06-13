/// @description Insert description here
// You can write your code in this editor
//shader stuff
shader = shd_spawn;

x_offset = sprite_xoffset/sprite_width;
y_offset = sprite_yoffset/sprite_height;

u_originX = shader_get_uniform(shader, "originX");
u_originY = shader_get_uniform(shader, "originY");
u_spawnProg = shader_get_uniform(shader, "spawnProg");

spawnProgress = 0;
timer = 0.0;
spawning = true;
spawnTime = 180.0;
scr_spawn(x, y);
spawnX = x;
spawnY = y;
spawnInstance = undefined;
image_alpha = 0;
image_speed = 0;
image_angle = random(360);


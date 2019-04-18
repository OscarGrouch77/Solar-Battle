/// set variables

hp = 3
spd = 0
cooldown = 0
playerDir = 0
overheat = 0
shield = false
double = false
supercool = false



//set start location

x = obj_sun.x + (room_width/4)
y = obj_sun.y



image_angle = 180

audio_sound_pitch(snd_engine2,1.2);

player2Thrust1 = instance_create_layer(x + lengthdir_x(5, playerDir - 90) + lengthdir_x(16, playerDir - 180), y + lengthdir_y(16, playerDir - 180) + lengthdir_y(5, playerDir - 90), "Instances", obj_thruster);
player2Thrust2 = instance_create_layer(x + lengthdir_x(5, playerDir + 90) + lengthdir_x(16, playerDir - 180), y + lengthdir_y(16, playerDir - 180) - lengthdir_y(5, playerDir - 90), "Instances", obj_thruster);
with (player2Thrust1) image_index = 5;
with (player2Thrust2) image_index = 5;
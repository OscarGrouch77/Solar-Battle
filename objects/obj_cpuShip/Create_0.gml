/// @description Insert description here
// You can write your code in this editor

//set variables for cpuShip

hp = 3;
spd = 0;
cooldown = 0;
playerDir = 0;
overheat = 0;
shield = false;
double = false;
supercool = false;
bulletSpeed = 8;
chosen = false

//variables for AI

thrusting = false;
reversing = false;
rotate = 0;
firing = false;


//states

enum states {
	idle,
	orbit,
	chase,
	attack,
	evade,
}

state = states.orbit;


//set start location

x = obj_sun.x + (room_width/4)
y = obj_sun.y



//set start orientation

image_angle = 180;

//set engine pitch

audio_sound_pitch(snd_engine2,1.2);

//create instances of engine thrusters

cpuShipThrust1 = instance_create_layer(x + lengthdir_x(5, playerDir - 90) + lengthdir_x(16, playerDir - 180), y + lengthdir_y(16, playerDir - 180) + lengthdir_y(5, playerDir - 90), "Instances", obj_thruster);
cpuShipThrust2 = instance_create_layer(x + lengthdir_x(5, playerDir + 90) + lengthdir_x(16, playerDir - 180), y + lengthdir_y(16, playerDir - 180) - lengthdir_y(5, playerDir - 90), "Instances", obj_thruster);

//make thrusters invisible

with (cpuShipThrust1) image_index = 5;
with (cpuShipThrust2) image_index = 5;
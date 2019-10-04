/// @description Insert description here
// You can write your code in this editor

//set variables for cpuShip

hp = 1;
spd = 0;
cooldown = 0;
playerDir = 0;
overheat = 0;
shield = false;
double = false;
supercool = false;
bulletSpeed = 8;
bulletLife = 100;
chosen = false;

//variables for AI

aiLevel = 0;
thrusting = false;
reversing = false;
rotate = 0;
firing = false;
aimAt = 0;
enemyDis = 600;
enemy = obj_cpuDemo1;
myBullet = obj_bulletDemo2;
enemyBullet = obj_bulletDemo1;
me = obj_cpuDemo2;


//states

enum states2 {
	idle,
	orbit,
	chase,
	attack,
	evade,
}

state = states2.orbit;


//set start orientation

image_angle = 180;

//set engine pitch

audio_sound_pitch(snd_engine2,1.2);

//create instances of engine thrusters

cpuDemo2Thrust1 = instance_create_layer(x + lengthdir_x(5, playerDir - 90) + lengthdir_x(16, playerDir - 180), y + lengthdir_y(16, playerDir - 180) + lengthdir_y(5, playerDir - 90), "Instances", obj_thruster);
cpuDemo2Thrust2 = instance_create_layer(x + lengthdir_x(5, playerDir + 90) + lengthdir_x(16, playerDir - 180), y + lengthdir_y(16, playerDir - 180) - lengthdir_y(5, playerDir - 90), "Instances", obj_thruster);

//make thrusters invisible

with (cpuDemo2Thrust1) image_index = 5;
with (cpuDemo2Thrust2) image_index = 5;
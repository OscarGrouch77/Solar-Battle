/// @description Insert description here
// You can write your code in this editor

//for engine sounds
oldThrusting = false;

//set engine pitch

audio_sound_pitch(snd_engine2,0.8);

//sets position of rocket nozzle according to ship sprite
thrustYOffset = 5;
thrustXOffset = 16;

//changes variables according to ship sprite
switch(sprite_index)
{
	case spr_axion: thrustYOffset = 5; thrustXOffset = 19; thrust = global.shipStats[0,2]/100; fireRate = 30 - (global.shipStats[0,3]*3); spray = 10 - global.shipStats[0,5]; missileAmmo = 2; missile = true; bulletSpeed = 8; bulletLife = 100; break;
	case spr_brawler: thrustYOffset = 16; thrustXOffset = 28; thrust = global.shipStats[1,2]/100; fireRate = 30 - (global.shipStats[1,3]*2); spray = 10 - global.shipStats[1,5]; missileAmmo = 0; missile = false; bulletSpeed = 6.5; bulletLife = 100; break;
	case spr_longbow: thrustYOffset = 5; thrustXOffset = 24; thrust = global.shipStats[2,2]/100; fireRate = 30 - (global.shipStats[2,3]*2); spray = 10 - global.shipStats[2,5]; missileAmmo = 0; missile = false; bulletSpeed = 12; bulletLife = 150; break;
	case spr_arachnid: thrustYOffset = 9; thrustXOffset = 25; thrust = global.shipStats[3,2]/100; fireRate = 30 - (global.shipStats[3,3]*2); spray = 10 - global.shipStats[3,5]; missileAmmo = 0 missile = false; bulletSpeed = 6; bulletLife = 100; break;
}

//create instances of engine thrusters

cpuDemo1Thrust1 = instance_create_layer(x + lengthdir_x(thrustYOffset, playerDir - 90) + lengthdir_x(thrustXOffset, playerDir - 180), y + lengthdir_y(thrustXOffset, playerDir - 180) + lengthdir_y(thrustYOffset, playerDir - 90), "Instances", obj_thruster);
cpuDemo1Thrust2 = instance_create_layer(x + lengthdir_x(thrustYOffset, playerDir + 90) + lengthdir_x(thrustXOffset, playerDir - 180), y + lengthdir_y(thrustXOffset, playerDir - 180) - lengthdir_y(thrustYOffset, playerDir - 90), "Instances", obj_thruster);



//make thrusters invisible

with (cpuDemo1Thrust1) image_index = 5;
with (cpuDemo1Thrust2) image_index = 5;

//dimensions of sprite for sheild sizing
width = bbox_right - bbox_left;
height = bbox_bottom - bbox_top;

//changing stats based on agr, acc, skl, avd levels

if (agr < 2) 
{
	enemyChaseDis = 800;
	enemyAttackDis = 400;
}
if (agr >= 2) and (agr < 6)
{
	enemyChaseDis = 700;
	enemyAttackDis = 450;
}
if (agr >= 6) and (agr < 9)
{
	enemyChaseDis = 600;
	enemyAttackDis = 500;
}
if (agr >= 9)
{
	enemyChaseDis = 550;
	enemyAttackDis = 550;
}

	

if (acc < 2)
{
	aimTol = 15;
}
else aimTol = 5;

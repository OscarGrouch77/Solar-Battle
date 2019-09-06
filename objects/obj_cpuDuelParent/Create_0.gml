/// @description Insert description here
// You can write your code in this editor

//for engine sounds
oldThrusting = false;

//set engine pitch

audio_sound_pitch(snd_engine2,0.8);

//sets position of rocket nozzle according to ship sprite
thrustYOffset = 5;
thrustXOffset = 16;
switch(sprite_index)
{
	case spr_playerShipType2: thrustYOffset = 16; thrustXOffset = 28; break;
	case spr_player1v2: thrustYOffset = 5; thrustXOffset = 19; break;
	case spr_alien1: thrustYOffset = 9; thrustXOffset = 25; break;
}

//create instances of engine thrusters

cpuDemo1Thrust1 = instance_create_layer(x + lengthdir_x(thrustYOffset, playerDir - 90) + lengthdir_x(thrustXOffset, playerDir - 180), y + lengthdir_y(thrustXOffset, playerDir - 180) + lengthdir_y(thrustYOffset, playerDir - 90), "Instances", obj_thruster);
cpuDemo1Thrust2 = instance_create_layer(x + lengthdir_x(thrustYOffset, playerDir + 90) + lengthdir_x(thrustXOffset, playerDir - 180), y + lengthdir_y(thrustXOffset, playerDir - 180) - lengthdir_y(thrustYOffset, playerDir - 90), "Instances", obj_thruster);



//make thrusters invisible

with (cpuDemo1Thrust1) image_index = 5;
with (cpuDemo1Thrust2) image_index = 5;

//changing stats based on agr, acc, skl, avd levels

if (agr < 2) 
{
	enemyChaseDis = 800;
	enemyAttackDis = 400;
}
if (agr >= 2) and (agr < 4)
{
	enemyChaseDis = 750;
	enemyAttackDis = 425;
}
if (agr >= 4) and (agr < 6)
{
	enemyChaseDis = 700;
	enemyAttackDis = 450;
}
if (agr >= 6) and (agr < 8)
{
	enemyChaseDis = 650;
	enemyAttackDis = 475;
}
if (agr >= 8) and (agr < 9)
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

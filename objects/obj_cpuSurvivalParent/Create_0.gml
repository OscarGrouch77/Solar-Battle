/// @description Insert description here
// You can write your code in this editor

//set engine pitch

audio_sound_pitch(snd_engine2,1);

//create instances of engine thrusters

cpuDemo1Thrust1 = instance_create_layer(x + lengthdir_x(5, playerDir - 90) + lengthdir_x(16, playerDir - 180), y + lengthdir_y(16, playerDir - 180) + lengthdir_y(5, playerDir - 90), "Instances", obj_thruster);
cpuDemo1Thrust2 = instance_create_layer(x + lengthdir_x(5, playerDir + 90) + lengthdir_x(16, playerDir - 180), y + lengthdir_y(16, playerDir - 180) - lengthdir_y(5, playerDir - 90), "Instances", obj_thruster);



//make thrusters invisible

with (cpuDemo1Thrust1) image_index = 5;
with (cpuDemo1Thrust2) image_index = 5;

//changing stats based on agr, acc, skl, avd levels

if (agr < 2) 
{
	enemyChaseDis = 800;
	enemyAttackDis = 400;
}

if (acc < 2)
{
	aimTol = 15;
}
else aimTol = 5;

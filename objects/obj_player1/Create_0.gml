/// set variables
x = obj_sun.x - (room_width/4);
y = obj_sun.y;

//sets position of rocket nozzle according to ship sprite
thrustYOffset = 5;
thrustXOffset = 16;

//sets ship sprite
sprite_index = global.p1Ship;

//changes variables according to ship sprite
switch(sprite_index)
{
	case spr_axion: thrustYOffset = 5; thrustXOffset = 19; thrust = global.shipStats[0,2]/100; fireRate = 30 - (global.shipStats[0,3]*3); spray = 10 - global.shipStats[0,5]; missileAmmo = 2; missile = true; bulletSpeed = 8; bulletLife = 100; turnSpeed = global.shipStats[0,6]*0.4; break;
	case spr_brawler: thrustYOffset = 16; thrustXOffset = 28; thrust = global.shipStats[1,2]/100; fireRate = 30 - (global.shipStats[1,3]*2); spray = 10 - global.shipStats[1,5]; missileAmmo = 0; missile = false; bulletSpeed = 6.5; bulletLife = 100; turnSpeed = global.shipStats[1,6]*0.4; break;
	case spr_longbow: thrustYOffset = 5; thrustXOffset = 24; thrust = global.shipStats[2,2]/100; fireRate = 30 - (global.shipStats[2,3]*2); spray = 10 - global.shipStats[2,5]; missileAmmo = 0; missile = false; empAmmo = 4; emp = true; bulletSpeed = 12; bulletLife = 150; turnSpeed = global.shipStats[2,6]*0.4; break;
	case spr_arachnid: thrustYOffset = 9; thrustXOffset = 25; thrust = global.shipStats[3,2]/100; fireRate = 30 - (global.shipStats[3,3]*2); spray = 10 - global.shipStats[3,5]; missileAmmo = 0 missile = false; bulletSpeed = 6; bulletLife = 100; turnSpeed = global.shipStats[3,6]*0.4; break;
}






//create thruster instances
player1Thrust1 = instance_create_layer(x + lengthdir_x(thrustYOffset, playerDir - 90) + lengthdir_x(thrustXOffset, playerDir - 180), y + lengthdir_y(thrustXOffset, playerDir - 180) + lengthdir_y(thrustYOffset, playerDir - 90), "Instances", obj_thruster);
player1Thrust2 = instance_create_layer(x + lengthdir_x(thrustYOffset, playerDir + 90) + lengthdir_x(thrustXOffset, playerDir - 180), y + lengthdir_y(thrustXOffset, playerDir - 180) - lengthdir_y(thrustYOffset, playerDir - 90), "Instances", obj_thruster);
with (player1Thrust1) image_index = 5;
with (player1Thrust2) image_index = 5;

//dimensions of sprite for sheild sizing
width = bbox_right - bbox_left;
height = bbox_bottom - bbox_top;

//define engine sound
eng = audio_play_sound(snd_engine1,0,1);
audio_stop_sound(eng);

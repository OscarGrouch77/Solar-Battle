
//set start location

x = obj_sun.x + (room_width/4)
y = obj_sun.y

//sets position of rocket nozzle according to ship sprite
thrustYOffset = 5;
thrustXOffset = 16;

//sets ship sprite
sprite_index = global.p2Ship;

//changes variables according to ship sprite
switch(sprite_index)
{
	case spr_player1: thrustYOffset = 5; thrustXOffset = 24; thrust = 0.07; fireRate = 16; spray = 0; missileAmmo = 0; missile = false; bulletSpeed = 9; bulletLife = 150; break;
	case spr_playerShipType2: thrustYOffset = 16; thrustXOffset = 28; thrust = 0.06; fireRate = 10; spray = 7; missileAmmo = 0; missile = false; bulletSpeed = 6.5; break;
	case spr_player1v2: thrustYOffset = 5; thrustXOffset = 19; thrust = 0.05; fireRate = 13; spray = 3; missileAmmo = 2; missile = true; bulletSpeed = 8; break;
	case spr_alien1: thrustYOffset = 9; thrustXOffset = 25; thrust = 0.07; fireRate = 12; spray = 10; missileAmmo = 0 missile = false; bulletSpeed = 6; break;
}


player2Thrust1 = instance_create_layer(x + lengthdir_x(thrustYOffset, playerDir - 90) + lengthdir_x(thrustXOffset, playerDir - 180), y + lengthdir_y(thrustXOffset, playerDir - 180) + lengthdir_y(thrustYOffset, playerDir - 90), "Instances", obj_thruster);
player2Thrust2 = instance_create_layer(x + lengthdir_x(thrustYOffset, playerDir + 90) + lengthdir_x(thrustXOffset, playerDir - 180), y + lengthdir_y(thrustXOffset, playerDir - 180) - lengthdir_y(thrustYOffset, playerDir - 90), "Instances", obj_thruster);
with (player2Thrust1) image_index = 5;
with (player2Thrust2) image_index = 5;

//dimensions of sprite for sheild sizing
width = bbox_right - bbox_left;
height = bbox_bottom - bbox_top;

//define engine sound
eng = audio_play_sound(snd_engine2,0,1);
audio_stop_sound(eng);

//shadHP1[1] = 0;
//shadHP1[0] = 0;

//shadHP2[1] = 0;
//shadHP2[0] = 0;
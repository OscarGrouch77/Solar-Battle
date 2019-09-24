/// set variables
x = obj_sun.x - (room_width/4);
y = obj_sun.y;

//sets position of rocket nozzle according to ship sprite
thrustYOffset = 5;
thrustXOffset = 16;
sprite_index = global.p1Ship;
switch(sprite_index)
{
	case spr_player1: thrustYOffset = 5; thrustXOffset = 24; thrust = 0.07; fireRate = 15; spray = 0; missileAmmo = 0; missile = false; break;
	case spr_playerShipType2: thrustYOffset = 16; thrustXOffset = 28; thrust = 0.06; fireRate = 10; spray = 10; missileAmmo = 0; missile = false; break;
	case spr_player1v2: thrustYOffset = 5; thrustXOffset = 19; thrust = 0.05; fireRate = 13; spray = 5; missileAmmo = 2; missile = true; break;
	case spr_alien1: thrustYOffset = 9; thrustXOffset = 25; thrust = 0.07; fireRate = 10; spray = 10; missileAmmo = 0 missile = false; break;
}




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

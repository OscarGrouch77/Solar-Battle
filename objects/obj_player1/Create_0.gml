/// set variables


x = obj_sun.x - (room_width/4);
y = obj_sun.y;

//sets position of rocket nozzle according to ship sprite
thrustYOffset = 5;
thrustXOffset = 16;
switch(sprite_index)
{
	case spr_playerShipType2: thrustYOffset = 16; thrustXOffset = 28; break;
	case spr_player1v2: thrustYOffset = 5; thrustXOffset = 19; break;
	case spr_alien1: thrustYOffset = 9; thrustXOffset = 25; break;
}




player1Thrust1 = instance_create_layer(x + lengthdir_x(thrustYOffset, playerDir - 90) + lengthdir_x(thrustXOffset, playerDir - 180), y + lengthdir_y(thrustXOffset, playerDir - 180) + lengthdir_y(thrustYOffset, playerDir - 90), "Instances", obj_thruster);
player1Thrust2 = instance_create_layer(x + lengthdir_x(thrustYOffset, playerDir + 90) + lengthdir_x(thrustXOffset, playerDir - 180), y + lengthdir_y(thrustXOffset, playerDir - 180) - lengthdir_y(thrustYOffset, playerDir - 90), "Instances", obj_thruster);
with (player1Thrust1) image_index = 5;
with (player1Thrust2) image_index = 5;

//dimensions of sprite for sheild sizing
width = bbox_right - bbox_left;
height = bbox_bottom - bbox_top;



//shadHP1[1] = 0;
//shadHP1[0] = 0;

//shadHP2[1] = 0;
//shadHP2[0] = 0;
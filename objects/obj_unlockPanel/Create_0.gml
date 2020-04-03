/// @description Insert description here
// You can write your code in this editor


//scale of panel
scale = 1;

//rotate ship sprite and stop animation
image_angle = image_angle + 90;
image_speed = 0;
image_xscale = scale;
image_yscale = scale;

//fadeout variables
fadeout = false;
fade = 1;
alpha = 1;

//unlock message
text = "";

//borders of unlockpanel offsets for drawing rectangle
leftBorderOffset = -38 * scale;
rightBorderOffset = 180 * scale;
topBorderOffset = -38 * scale;
bottomBorderOffset = 38 * scale;

//set start position, just off screen
x = room_width - leftBorderOffset;
y = room_height - bottomBorderOffset - (20 * scale);

//target x position
xTarget = room_width - rightBorderOffset - (20 * scale);

//alarm to fade out
alarm[0] = 240;
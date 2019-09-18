/// @description Insert description here
// You can write your code in this editor

image_angle = image_angle + 5;			//make bullet spin

//gravity affecting bullet

scr_gravityForce(x,y);
	
move_wrap(true, true, 0);						///wrap around room
/// @description Insert description here
// You can write your code in this editor

//move panel into screen and stop
//slow slide speed as it reaches target
var slideSpd = (xTarget - x) * 0.15;
slideSpd = -slideSpd < 0.1 ? 0 : slideSpd;	//sets slideSpd to zero if very slow
hspeed = slideSpd;

if (fadeout){
	fade = max(fade-0.02, 0);
}

alpha = fade;

image_alpha = alpha;

if (alpha = 0){
	instance_destroy();
}


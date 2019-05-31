/// @description Insert description here
// You can write your code in this editor

//rotating controller
if (rotate == 1){
	image_angle += 4;
}

if (rotate == -1){
	image_angle -= 4;
}


//pointing towards target
if instance_exists(target)
{
	targetDir = point_direction(x, y, target.x, target.y);
	scr_rotateTo(targetDir);
}



//thrusting towards target

motion_add(image_angle, 0.5);
speed = min(speed, 10);


//alarm destroys self
if (alarm[0] = -1)
{
	alarm[0] = 300;
}

move_wrap(true, true, 0);

scr_missileSmoke(x,y);

//sound missile engine
if !(audio_is_playing(snd_missile1))
{
	audio_sound_gain(snd_missile1, 0.3, 0);
	audio_sound_pitch(snd_missile1,2);
	audio_play_sound(snd_missile1, 1, true);
}
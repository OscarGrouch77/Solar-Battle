/// @description Insert description here
// You can write your code in this editor

audio_sound_pitch(snd_hit,random_range(0.8,1.2))
audio_play_sound(snd_hit,1,0);

with (obj_cpuShip)
{
	hp = hp-1;
	motion_add(other.direction,1);
}

scr_hit(x,y);

instance_destroy();
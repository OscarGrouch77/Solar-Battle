/// @description Insert description here
// You can write your code in this editor
audio_stop_sound(snd_chargeUp);
audio_stop_sound(snd_engine2);
with player2Thrust1
{	
	image_index = 5;
	instance_destroy(self);
}
with player2Thrust2
{
	image_index = 5;
	instance_destroy(self);
}
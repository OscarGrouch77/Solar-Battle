/// @description Insert description here
// You can write your code in this editor

if (other.owner != id)
{
	if (shield == false)
	{
		hp = hp - other.dmg;
		global.multiplier = 1;
		if (hp > 0) motion_add(other.direction,1);
	
		with other
		{
			audio_sound_pitch(snd_hit,random_range(0.8,1.2));
			audio_play_sound(snd_hit,1,0);

			scr_hit(x,y);

			instance_destroy();
		}
	}
	else
	{
		shield = false;
		with other instance_destroy();
	}
}

/// @description Insert description here
// You can write your code in this editor

audio_sound_pitch(snd_explode, 2);
audio_sound_gain(snd_explode, 0.5, 0);
audio_play_sound(snd_explode, 1, false);
audio_stop_sound(snd_missile1);
scr_hit(x, y);
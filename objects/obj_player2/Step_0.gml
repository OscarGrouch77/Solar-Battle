
playerDir= image_angle

//gravity force

scr_gravityForce(x,y);

///movement

image_angle+=((keyboard_check(vk_left)) - (keyboard_check(vk_right))) * 2;	///rotating the ship


if(keyboard_check(vk_up))					///thrust in the direction ship is pointing
{	
		motion_add(image_angle,.05);
}

if(keyboard_check(vk_down))					///reverse thrust
{	
		motion_add(image_angle - 180,.025);
}

//// engine sounds	

if(keyboard_check(vk_up))					///thrust in the direction ship is pointing
{	
		if !(audio_is_playing(snd_engine2))
		{	
			eng = audio_play_sound(snd_engine2,0,1);		///sets variable for engine sound
			audio_sound_gain(eng,0,0);						///sets volume of engine to 0
			audio_sound_gain(eng,1,1000);				///fades in and plays engine sound
		}	
}	

if (keyboard_check_released(vk_up))							
{	
	var engGain = audio_sound_get_gain(eng);				///gets last gain level of engine sound		
	
	audio_stop_sound(snd_engine2);
	var engStop = audio_play_sound(snd_engine2,0,0);
	audio_sound_gain(engStop,engGain,0);					///sets engine sound gain to last level for smooth fade out
	audio_sound_gain(engStop,0,500);						///fades out engine sound
	if (audio_sound_get_gain(engStop) = 0)
	{
		audio_stop_sound(snd_engine2);					///stops engine sound playing when it fades out
	}
}
if (keyboard_check_pressed(vk_up))
	{
		audio_stop_sound(snd_engine2);					///stops engine sound playing if "W" pressed
	}	
	
//reverse thrust sounds

if(keyboard_check(vk_down))					
{	
		if !(audio_is_playing(snd_engine2))
		{	
			eng = audio_play_sound(snd_engine2,0,1);		///sets variable for engine sound
			audio_sound_pitch(eng,1.3);
			audio_sound_gain(eng,0,0);						///sets volume of engine to 0
			audio_sound_gain(eng,0.8,1000);				///fades in and plays engine sound
		}	
}	

if (keyboard_check_released(vk_down))							
{	
	var engGain = audio_sound_get_gain(eng);				///gets last gain level of engine sound		
	
	audio_stop_sound(snd_engine2);
	var engStop = audio_play_sound(snd_engine2,0,0);
	audio_sound_pitch(engStop, 1.3);
	audio_sound_gain(engStop,engGain,0);					///sets engine sound gain to last level for smooth fade out
	audio_sound_gain(engStop,0,500);						///fades out engine sound
	if (audio_sound_get_gain(engStop) = 0)
	{
		audio_stop_sound(snd_engine2);					///stops engine sound playing when it fades out
	}
}
if (keyboard_check_pressed(vk_down))
	{
		audio_stop_sound(snd_engine2);					///stops engine sound playing if "down" pressed
	}				
////end of engine sounds	
	



move_wrap(true, true, 0);

//shooting

if (keyboard_check(vk_enter)) and (cooldown <= 0)
{
	if (double == false)
	{
		var bullet = instance_create_layer(x,y,"Bullets",obj_genericBullet);			//creates bullet if cooldown 0
		with bullet
		{
			owner = other.me;
			speed = other.speed;
			direction = other.direction;
			motion_add(other.playerDir, other.bulletSpeed);
		}
	}
	if (double == true)
	{
		var bullet1 = instance_create_layer(x + lengthdir_x(11, (image_angle + 90)), y + lengthdir_y(11, (image_angle + 90)),"Bullets",obj_genericBullet);			//creates bullet if cooldown 0
		with bullet1
		{
			owner = other.me;
			speed = other.speed;
			direction = other.direction;
			motion_add(other.playerDir, other.bulletSpeed);
		}
		var bullet2 = instance_create_layer(x + lengthdir_x(11, (image_angle - 90)), y + lengthdir_y(11, (image_angle - 90)),"Bullets",obj_genericBullet);			//creates bullet if cooldown 0
		with bullet2
		{
			owner = other.me;
			speed = other.speed;
			direction = other.direction;
			motion_add(other.playerDir, other.bulletSpeed);
		}
	}
	cooldown = 15;
	overheat = overheat + 2;
	audio_sound_pitch(snd_pew,1.2);
	audio_play_sound(snd_pew,0,0);
}

if (overheat <= 10)
{
	if (supercool = true)
	{
		overheat = max(0,overheat - 0.1);
	}
	else
	overheat = max(0,overheat - 0.05);						//overheat reduces
}

if (overheat > 10) and (alarm[1] == -1)				//gun overheated starts alarm 1
{
	alarm[1] = 60;
}



if (overheat < 10)									//cooldown weapon only if not overheated
{
	cooldown = max((cooldown-1), 0);
}


//shooting missile

if (missile == true)
{
	if (keyboard_check(vk_add)) and (missileActive = false)
	{
		missileActive = true;
		var myMissile = instance_create_layer(x,y,"Bullets",obj_genericMissile);
		myMissile.owner = self;
		myMissile.target = enemy;
		missileAmmo -= 1;
	}
	if (missileAmmo <= 0) missile = false;
}


if (hp <= 0)										//destroy
{
	instance_create_layer(x, y, "bottomParticle", obj_partSysP2Explosion);
	scr_p2Explosion(x, y);
	audio_sound_pitch(snd_explode,1);
	audio_sound_gain(snd_explode,1,0);
	audio_play_sound(snd_explode,0,0);
	instance_destroy();								
}




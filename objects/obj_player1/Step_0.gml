playerDir= image_angle



//define enemy
if (global.gameType == gameType.survival)
{
	enemy = obj_survivalSystem.sEnemy;
}

if (global.gameType == gameType.oneDuel)
{
	enemy = obj_system1player.dEnemy;
}

if (global.gameType == gameType.twoDuel)
{
	enemy = obj_player2;
}



//gravity force

scr_gravityForce(x,y);

//movement

image_angle+=(keyboard_check(ord("A")) - keyboard_check(ord("D"))) * 2;	///rotating the ship


if(keyboard_check(ord("W")))					///thrust in the direction ship is pointing
{	
	motion_add(image_angle,.05);
}
		
if(keyboard_check(ord("S")))					///reverse thrust
{	
	motion_add(image_angle - 180,.025);
}
		
//// engine sounds	
if(keyboard_check(ord("W")))					
{	
		if !(audio_is_playing(snd_engine1))
		{	
			eng = audio_play_sound(snd_engine1,0,1);		///sets variable for engine sound
			audio_sound_pitch(eng, 1);						//sets pitch of eng sound
			audio_sound_gain(eng,0,0);						///sets volume of engine to 0
			audio_sound_gain(eng,1,1000);				///fades in and plays engine sound
		}	
}

if (keyboard_check_released(ord("W")))							
{
	var engGain = audio_sound_get_gain(eng);				///gets last gain level of engine sound		
	
	audio_stop_sound(snd_engine1);
	var engStop = audio_play_sound(snd_engine1,0,0);
	audio_sound_gain(engStop,engGain,0);					///sets engine sound gain to last level for smooth fade out
	audio_sound_gain(engStop,0,500);						///fades out engine sound
	if (audio_sound_get_gain(engStop) = 0)
		{
			audio_stop_sound(snd_engine1);					///stops engine sound playing when it fades out
		}
}

if (keyboard_check_pressed(ord("W")))
	{
		audio_stop_sound(snd_engine1);					///stops engine sound playing if "W" pressed
	}	

//reverse thrust sounds

if(keyboard_check(ord("S")))					
{	
		if !(audio_is_playing(snd_engine1))
		{	
			eng = audio_play_sound(snd_engine1,0,1);		///sets variable for engine sound
			audio_sound_pitch(eng, 1.3);					//sets pitch of eng sound
			audio_sound_gain(eng,0,0);						///sets volume of engine to 0
			audio_sound_gain(eng,0.8,1000);				///fades in and plays engine sound
		}	
}

if (keyboard_check_released(ord("S")))							
{
	var engGain = audio_sound_get_gain(eng);				///gets last gain level of engine sound		
	
	audio_stop_sound(snd_engine1);
	var engStop = audio_play_sound(snd_engine1,0,0);
	audio_sound_pitch(engStop, 1.3);
	audio_sound_gain(engStop,engGain,0);					///sets engine sound gain to last level for smooth fade out
	audio_sound_gain(engStop,0,500);						///fades out engine sound
	if (audio_sound_get_gain(engStop) = 0)
		{
			audio_stop_sound(snd_engine1);					///stops engine sound playing when it fades out
		}
}

if (keyboard_check_pressed(ord("S")))
	{
		audio_stop_sound(snd_engine1);					///stops engine sound playing if "W" pressed
	}	

////end of engine sounds	

move_wrap(true, true, 0);								//wrap around edges of room

//shooting

if (keyboard_check(vk_space)) and (cooldown <= 0)
{
	if (double == false)
	{
		var bullet = instance_create_layer(x,y,"Bullets",myBullet);			//creates bullet if cooldown 0
		with bullet
		{
			owner = other.id;
			speed = other.speed;
			direction = other.direction;
			motion_add(other.playerDir, other.bulletSpeed);
		}
	}
	if (double == true)												//double bullets if double power up active
	{
		var bullet1 = instance_create_layer(x + lengthdir_x(11, (image_angle + 90)), y + lengthdir_y(11, (image_angle + 90)),"Bullets",myBullet);			//creates bullet if cooldown 0
		with bullet1
		{
			owner = other.id;
			speed = other.speed;
			direction = other.direction;
			motion_add(other.playerDir, other.bulletSpeed);
		}
		var bullet2 = instance_create_layer(x + lengthdir_x(11, (image_angle - 90)), y + lengthdir_y(11, (image_angle - 90)),"Bullets",myBullet);			//creates bullet if cooldown 0
		with bullet2
		{
			owner = other.id;
			speed = other.speed;
			direction = other.direction;
			motion_add(other.playerDir, other.bulletSpeed);
		}
	}
	cooldown = 15
	overheat = overheat + 2;
	audio_sound_pitch(snd_pew3,1);
	audio_play_sound(snd_pew3,0,0);
}

if (overheat <= 10)
{
	if (supercool = true)								//activates supercooling if powerup active
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

//shooting missile

if (missile == true)
{
	if (keyboard_check(ord("M"))) and (missileActive = false)
	{
		missileActive = true;
		var myMissile = instance_create_layer(x,y,"Bullets",obj_genericMissile);
		myMissile.owner = id;
		myMissile.target = instance_nearest(x, y, enemy);
		missileAmmo -= 1;
	}
	if (missileAmmo <= 0) missile = false;
}

//show_debug_message(overheat);

if (overheat < 10)									//cooldown weapon only if not overheated
{
	cooldown = max((cooldown-1), 0);
}


if (hp <= 0)										//destroy
{
	thisExp = instance_create_layer(x, y, "bottomParticle", obj_partSysGenericExplosion);
	thisExp.expDir = me.direction;
	thisExp.expSpeed = me.speed;
	thisExp.expx = me.x;
	thisExp.expy = me.y;
	thisExp.me = thisExp;
	audio_sound_pitch(snd_explode, 1);
	audio_sound_gain(snd_explode,1,0);
	audio_play_sound(snd_explode,0,0);
	instance_destroy();					
}

if (healing == true)
{
	timer++
	instance_create_layer(x, y, "topParticle", obj_partSysHealthGain);
	scr_healthGain(x, y);
	if (timer > 120)
	{
		timer = 0;
		hp++;
		healing = false;
		instance_destroy(obj_partSysHealthGain);
	}
}

//instance_create_depth(x,y,0,obj_path);				//creates object for drawing path




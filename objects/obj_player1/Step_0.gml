playerDir= image_angle



//define enemy
if (global.gameType == gameType.survival)
{
	enemy = obj_survivalSystem.sEnemy;
	enemy2 = obj_survivalSystem.sEnemy2;
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
if (disabled == false)
{
	image_angle+=(keyboard_check(global.p1Left) - keyboard_check(global.p1Right)) * turnSpeed;	///rotating the ship

	if(keyboard_check(global.p1Thrust))					///thrust in the direction ship is pointing
	{	
		motion_add(image_angle, thrust);
	}

		
	if(keyboard_check(global.p1Reverse))					///reverse thrust
	{	
		motion_add(image_angle - 180,thrust*0.5);
	}
}
		
//// engine sounds	

if (disabled == false)
{
	if(keyboard_check(global.p1Thrust))					
	{	
			if !(audio_is_playing(snd_engine1))
			{	
				eng = audio_play_sound(snd_engine1,0,1);		///sets variable for engine sound
				audio_sound_pitch(eng, 1);						//sets pitch of eng sound
				audio_sound_gain(eng,0,0);						///sets volume of engine to 0
				audio_sound_gain(eng,1,1000);				///fades in and plays engine sound
			}	
	}
}

if (keyboard_check_released(global.p1Thrust))							
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

if (keyboard_check_pressed(global.p1Thrust)) or (disabled == true)
	{
		audio_stop_sound(snd_engine1);					///stops engine sound playing if "W" pressed
	}	

//reverse thrust sounds
if (disabled == false)
{
	if(keyboard_check(global.p1Reverse))					
	{	
			if !(audio_is_playing(snd_engine1))
			{	
				eng = audio_play_sound(snd_engine1,0,1);		///sets variable for engine sound
				audio_sound_pitch(eng, 1.3);					//sets pitch of eng sound
				audio_sound_gain(eng,0,0);						///sets volume of engine to 0
				audio_sound_gain(eng,0.8,1000);				///fades in and plays engine sound
			}	
	}
}

if (keyboard_check_released(global.p1Reverse))							
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

if (keyboard_check_pressed(global.p1Reverse)) or (disabled == true)
	{
		audio_stop_sound(snd_engine1);					///stops engine sound playing if "W" pressed
	}	

////end of engine sounds	

move_wrap(true, true, 0);								//wrap around edges of room

//shooting missile
if (disabled == false) and (shootAble == true)
{
	if (missile == true)
	{
		if (keyboard_check_released(global.p1AltFire)) and (charging = false)
		{
			if !(fullyCharged){
				missileActive = true;
				var myMissile = instance_create_layer(x,y,"Bullets",obj_genericMissile);
				myMissile.owner = id;
				//myMissile.target = instance_nearest(x, y, enemy);
				missileAmmo -= 1;
			}
		}
		if (missileAmmo <= 0) missile = false;
	}

	//firing EMP
	if (emp == true)
	{
		if (keyboard_check(global.p1AltFire)) and (empActive = false)
		{
			empActive = true;
			var myEmp = instance_create_layer(x,y,"Ambient",obj_genericEmp);
			myEmp.owner = id;
			empAmmo -= 1;
			shootAble = false;
			alarm[7] = 360;
		}
		if (empAmmo <= 0) emp = false;
	}
}



//shooting

if (disabled == false) and (shootAble == true)
{
	if !(sprite_index == spr_arachnid) and !(sprite_index == spr_kepler)							//can fire by holding down fire button if not arachnoid
	{
		if (keyboard_check(global.p1Fire)) and (cooldown <= 0)
		{
			if (double == false)
			{
				var bullet = instance_create_layer(x,y,"Bullets",myBullet);			//creates bullet if cooldown 0
				with bullet
				{
					owner = other.id;
					speed = other.speed;
					direction = other.direction;
					motion_add(other.playerDir + random_range(-other.spray, other.spray), other.bulletSpeed);
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
					motion_add(other.playerDir + random_range(-other.spray, other.spray), other.bulletSpeed);
				}
				var bullet2 = instance_create_layer(x + lengthdir_x(11, (image_angle - 90)), y + lengthdir_y(11, (image_angle - 90)),"Bullets",myBullet);			//creates bullet if cooldown 0
				with bullet2
				{
					owner = other.id;
					speed = other.speed;
					direction = other.direction;
					motion_add(other.playerDir + random_range(-other.spray, other.spray), other.bulletSpeed);
				}
			}
			cooldown = fireRate;
			overheat = overheat + 2;
			audio_sound_pitch(snd_pew4, random_range(0.7, 1.1));
			audio_play_sound(snd_pew4,1,0);
		}
		
	}
	else																			//firing code for Arachnoid
	{
		if (sprite_index == spr_arachnid)
		{
			if (keyboard_check(global.p1Fire)) and (cooldown <= 0)
			{
				if (double == false)
				{
					var bullet = instance_create_layer(x,y,"Bullets",myBullet);			//creates bullet if cooldown 0
					with bullet
					{
						owner = other.id;
						speed = other.speed;
						direction = other.direction;
						motion_add(other.playerDir + random_range(-other.spray, other.spray), other.bulletSpeed);
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
						motion_add(other.playerDir + random_range(-other.spray, other.spray), other.bulletSpeed);
					}
					var bullet2 = instance_create_layer(x + lengthdir_x(11, (image_angle - 90)), y + lengthdir_y(11, (image_angle - 90)),"Bullets",myBullet);			//creates bullet if cooldown 0
					with bullet2
					{
						owner = other.id;
						speed = other.speed;
						direction = other.direction;
						motion_add(other.playerDir + random_range(-other.spray, other.spray), other.bulletSpeed);
					}
				}
				cooldown = fireRate;
				overheat = overheat + 2;
				audio_sound_pitch(snd_pew4, random_range(0.7, 1.1));
				audio_play_sound(snd_pew4,1,0);
			}
		
			if (keyboard_check(global.p1AltFire))				//code for charging special shot
			{
				chargeShot = min(chargeShot + 0.3, 30);		//increases chargeshot
				if (chargeShot > 3)							//if true draw charge meter
				{
					charging = true;						//charging true after one tenth of full charge time elapsed
				}
				if (chargeShot >= 30) fullyCharged = true;		//30 is max charge
			}
			else 
			{
				partialCharge = chargeShot;
				chargeShot = 0;
			}
			if (keyboard_check_released(global.p1AltFire))					//fire charged shot if fully charged
			{
				if (fullyCharged == true)								//fire fully charged shot
				{
					if (double == false)
					{
						var bullet = instance_create_layer(x,y,"Bullets",obj_chargedShot);		//creates fully charged shot bullet
						with bullet
						{
							owner = other.id;
							speed = other.speed;
							direction = other.direction;
							motion_add(other.playerDir, other.bulletSpeed*5);
						}
					}
					if (double == true)												//double bullets if double power up active
					{
						var bullet1 = instance_create_layer(x + lengthdir_x(11, (image_angle + 90)), y + lengthdir_y(11, (image_angle + 90)),"Bullets",obj_chargedShot);			//creates bullet if cooldown 0
						with bullet1
						{
							owner = other.id;
							speed = other.speed;
							direction = other.direction;
							motion_add(other.playerDir, other.bulletSpeed*5);
						}
						var bullet2 = instance_create_layer(x + lengthdir_x(11, (image_angle - 90)), y + lengthdir_y(11, (image_angle - 90)),"Bullets",obj_chargedShot);			//creates bullet if cooldown 0
						with bullet2
						{
							owner = other.id;
							speed = other.speed;
							direction = other.direction;
							motion_add(other.playerDir, other.bulletSpeed*5);
						}
					}
					cooldown = fireRate;
					overheat = overheat + 10;
					audio_sound_pitch(snd_pew4, random_range(0.2, 0.5));
					audio_play_sound(snd_pew4,0,0);
				}
				else																	//code for firing partially charged shot
				if (charging == true)
				{
					if (double == false)
					{
						var bullet = instance_create_layer(x,y,"Bullets",myBullet);			//creates bullet if cooldown 0
						with bullet
						{
							owner = other.id;
							speed = other.speed;
							direction = other.direction;
							var chargeLevel = other.partialCharge/30;//30 is max charge
							var chargedSpeed = max((other.bulletSpeed * 4)*chargeLevel, other.bulletSpeed)
							motion_add(other.playerDir + random_range(-other.spray, other.spray), chargedSpeed);
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
							var chargeLevel = other.partialCharge/30;//30 is max charge
							var chargedSpeed = max((other.bulletSpeed * 4)*chargeLevel, other.bulletSpeed)
							motion_add(other.playerDir + random_range(-other.spray, other.spray), chargedSpeed);
						}
						var bullet2 = instance_create_layer(x + lengthdir_x(11, (image_angle - 90)), y + lengthdir_y(11, (image_angle - 90)),"Bullets",myBullet);			//creates bullet if cooldown 0
						with bullet2
						{
							owner = other.id;
							speed = other.speed;
							direction = other.direction;
							var chargeLevel = other.partialCharge/30;//30 is max charge
							var chargedSpeed = max((other.bulletSpeed * 4)*chargeLevel, other.bulletSpeed)
							motion_add(other.playerDir + random_range(-other.spray, other.spray), chargedSpeed);
						}
					}
					cooldown = fireRate;
					overheat = overheat + 2;
					audio_sound_pitch(snd_pew4, random_range(0.7, 1.1));
					audio_play_sound(snd_pew4,0,0);
				}
				fullyCharged = false;
				charging = false;
				partialCharge = 0;
				chargeShot = 0;
			}
		}
		
		////code for grav gun ship
		if (sprite_index == spr_kepler)
		
		////normal firing code////
		{
			if (keyboard_check(global.p1Fire)) and (cooldown <= 0)
			{
				if (double == false)
				{
					var bullet = instance_create_layer(x,y,"Bullets",myBullet);			//creates bullet if cooldown 0
					with bullet
					{
						owner = other.id;
						speed = other.speed;
						direction = other.direction;
						motion_add(other.playerDir + random_range(-other.spray, other.spray), other.bulletSpeed);
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
						motion_add(other.playerDir + random_range(-other.spray, other.spray), other.bulletSpeed);
					}
					var bullet2 = instance_create_layer(x + lengthdir_x(11, (image_angle - 90)), y + lengthdir_y(11, (image_angle - 90)),"Bullets",myBullet);			//creates bullet if cooldown 0
					with bullet2
					{
						owner = other.id;
						speed = other.speed;
						direction = other.direction;
						motion_add(other.playerDir + random_range(-other.spray, other.spray), other.bulletSpeed);
					}
				}
				cooldown = fireRate;
				overheat = overheat + 2;
				audio_sound_pitch(snd_pew4, random_range(0.7, 1.1));
				audio_play_sound(snd_pew4,0,0);
			}
			
			////code for gravity gun////
			if (keyboard_check(global.p1AltFire)) and (gravOverheated == false)			
			{
				//grav gun heats up to max level at max level grav gun will disable and initiate cooldown period
				gravHeat = min(gravHeat + gravHeatRate, gravMaxHeat);	//heats up gravHEat at a rate of gravHeatRate per frame up to max of gravMaxHEat
				gravWarmth = min(gravWarmth + gravHeatRate, gravWarmUp);	//heats up gravHeat at a rate of gravHeatRate per frame up to max of gravMaxHEat
				if(gravWarmth >= gravWarmUp)
				{
					if(gravHeat < gravMaxHeat) and (gravConeExists = false)
					{
						createCone = true;
					}
				}
				if (createCone == true)
				{
				
					if (gravConeExists == false)
					{
						var num = 5;
						//for loop creates 4 copies of the gravcone off screen for room wrapping
						for(var i = num; i > 0; i--)
						{
							var gravCone = instance_create_layer(x, y, "Instances", obj_gravCone);
							with gravCone
							{
								owner = other.id;
								switch (i)
								{
									case 4: xOffset = -room_width; break;
									case 3: xOffset = room_width; break;
									case 2: yOffset = -room_height; break;
									case 1: yOffset = room_height; break;
								}
							}
					}
					gravConeExists = true;	
					}
					createCone = false;
				}	
			}
			if(gravHeat >= gravMaxHeat)				//checks if gravGun is overheated
				{
					gravOverheated = true;
				}
			if(gravOverheated == true)				//if gravgun is overheated deactivates gravcone
			{
				gravConeExists = false;
				createCone = false;
				if(gravHeat <= 0)					//sets gravOverheated to false when gravHeat reaches 0
				{
					gravOverheated = false;
				}
			}
			gravHeat = max(gravHeat - gravCoolRate, 0);			//cools down gravHeat at cool rate until it reaches 0
			if!(keyboard_check(global.p1AltFire))				//resets cone creation variables and removes cone
			{
				gravWarmth = 0;
				gravConeExists = false;
				createCone = false;
			}
		}	
	}
}


//charging sound effect
if (charging == true)
{
	if !(audio_is_playing(snd_chargeUp))
	{
		chSound = audio_play_sound(snd_chargeUp, 2, 1);
	}	
	var chPitch = 2.5*(chargeShot/30);
	audio_sound_pitch(chSound, chPitch);	
}
else
{
	if (audio_is_playing(snd_chargeUp))
	{
		audio_stop_sound(snd_chargeUp);
	}
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





if (overheat < 10)									//cooldown weapon only if not overheated
{
	cooldown = max((cooldown-1), 0);
}

//emit sparks if disabled
if (disabled == true)
{
	var sparking = random_range(0, 10);
	if (sparking >= 9.5)
	{
		var xx = x + random_range(-20, 20);
		var yy = y + random_range(-20, 20);
		scr_empDisable(xx, yy);
	}
}

if (hp <= 0)										//destroy
{
	thisExp = instance_create_layer(x, y, "bottomParticle", obj_partSysGenericExplosion);
	thisExp.expDir = me.direction;
	thisExp.expSpeed = me.speed;
	thisExp.expx = me.x;
	thisExp.expy = me.y;
	thisExp.me = thisExp;
	glow = instance_create_layer(x, y, "Ambient", obj_expGlow);
	glow.direction = direction;
	glow.speed = speed;
	audio_sound_pitch(snd_explode, 1);
	audio_sound_gain(snd_explode,1,0);
	audio_play_sound(snd_explode,0,0);
	instance_destroy();					
}


//healing
if (healing == true)
{
	timer++;
	repair = instance_create_layer(x, y, "topParticle", obj_partSysHealthGain);
	scr_healthGain(x, y, repair);
	if (timer > 120)
	{
		timer = 0;
		hp++;
		healing = false;
		instance_destroy(repair);
	}
}

//instance_create_depth(x,y,0,obj_path);				//creates object for drawing path




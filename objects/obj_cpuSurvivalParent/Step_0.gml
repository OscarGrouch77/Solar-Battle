/// @description Insert description here
// You can write your code in this editor


//keeping image angle between 0 and 360
image_angle = scr_wrapAngle(image_angle, 0, 360);

//setting playerDir (used in firing bullets)
playerDir = image_angle;

//define and update enemy location variables

if instance_exists(enemy)
{
	enemyDir = point_direction(x, y, enemy.x, enemy.y);
	enemyDis = point_distance(x, y, enemy.x, enemy.y);
}

//apply gravity

scr_gravityForce(x, y);

//room edge wrap

move_wrap(true, true, 0);

//AI rotating controller

if (rotate == 1){
	image_angle += 2;
}

if (rotate == -1){
	image_angle -= 2;
}

//AI thrusting controller

if (thrusting == true){
	motion_add(image_angle, thrust);
}

if (reversing == true){
	motion_add(image_angle, -thrust/2);
}



dirSun = point_direction(x, y, obj_sun.x, obj_sun.y);
disSun = point_distance(x, y, obj_sun.x, obj_sun.y);

//limiting speed
if (speed > 5) and (disSun >= 150) speed = max(speed - 0.1, 5);

//switch to orbit state if heading towards sun
if (disSun < 500) and (angle_difference(direction, dirSun) < 45)
{
	state = states1.orbit;
}

if (abs(angle_difference(direction, dirSun)) < 30)
{
	state = states1.orbit;
}


//orbit state if too close to sun
if (disSun < 200)
{
	state = states1.orbit;
}
	

		
		

		
	

//state behaviours

if (state == states1.idle)
#region//idle behaviour
{
	thrusting = false;
	reversing = false;
	rotate = 0;
	firing = false;
	
	
	if (instance_exists(enemy))
	{
		
		//switch to chase state if enemy further than chase distance
		if (enemyDis > enemyChaseDis)
		{
			state = states1.chase;
		}
		
		//switch to attack state if nearer than attach distance
		if (enemyDis <= enemyAttackDis)
		{
			state = states1.attack;
		}
		
	}
}
#endregion

if (state == states1.orbit)
{
	#region//orbit behaviour

	
	//determine best angle of thrust to avoid sun
	var targetAngle = image_angle;
	var orbitVector1 = dirSun+90;
	var orbitVector2 = dirSun-90;
	orbitVector1 = scr_wrapAngle(orbitVector1, 0, 360);
	orbitVector2 = scr_wrapAngle(orbitVector2, 0, 360);
	
	
	var angleDiff1 = angle_difference(direction, orbitVector1);
	var angleDiff2 = angle_difference(direction, orbitVector2);
	
	if (abs(angleDiff1) < abs(angleDiff2))
	{
		targetAngle = orbitVector1;
	}
	
	if (abs(angleDiff1) > abs(angleDiff2))
	{
		targetAngle = orbitVector2;
	}
	
	if (abs(angleDiff1) == abs(angleDiff2)) and (chosen == false)
	{
		targetAngle = choose(orbitVector1, orbitVector2);
		chosen = true;
	}
	
	scr_rotateTo(targetAngle);
	
	//cheating cpu assistance to avoid sun at skl level above 5
	if (skl > 5)
	{
		motion_add(targetAngle, 0.02);
	}
	
	if (abs(angle_difference(image_angle, targetAngle)) <= 40)
	{
		thrusting = true;
		chosen = false;
	}
	else thrusting = false;
	
	if (abs(angle_difference(direction, targetAngle)) <= 20)
	{
		state = states1.idle;
	}
	
	if (alarm[2] == -1)
	{
		alarm[2] = 60;
	}
	
	if (enemyDis < 400)
	{
		state = states1.attack;
	}

}
#endregion

if (state == states1.chase)
{
	#region//chase behaviour
	
	if (instance_exists(enemy))
	{
		
		//rotate towards player
		if (skl < 5)
		{
			scr_rotateTo(enemyDir);
		}
		else scr_rotateTo(aimAt);
	
		//thrust towards player if far away
		if (enemyDis > enemyChaseDis)
		{
			thrusting = true;
		}
		else
		{
			thrusting = false;
		}
		
		//switch to attack state if near
		if (enemyDis <= enemyAttackDis)
		{
			state = states1.attack;
		}
	
		
	}

	if (alarm[2] == -1)
	{
		alarm[2] = 120;
	}
	
	
}			
#endregion
	
if (state == states1.attack)
{
	#region//attack behaviour
	
	//rotate towards player
	scr_rotateTo(aimAt);
		
	//switch to orbit state if heading towards sun depending on aggression and skill level
	
	if (agr < 3)
	{
		if (disSun < 500) and abs((angle_difference(direction, dirSun)) < 50)
		{
			state = states1.orbit;
		}
		if abs((angle_difference(direction, dirSun)) < 35)
		{
			state = states1.orbit;
		}
		if (disSun < 500)
		{
			state = states1.orbit;
		}
	}
	else
	{
		if (disSun < 500) and abs((angle_difference(direction, dirSun)) < 35)
		{
			state = states1.orbit;
		}
		if abs((angle_difference(direction, dirSun)) < 20)
		{
			state = states1.orbit;
		}
		if (disSun < 300)
		{
			state = states1.orbit;
		}
	}
	
	

	
	
	//switching to idle after alarm 2 elapsed
	if (alarm[2] == -1)
	{
		alarm[2] = 60;
	}
	
}		
#endregion



//shooting



if (firing == true) and (cooldown <= 0)
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
			sprite_index = spr_bullet1;
		}
	}
	if (double == true)
	{
		var bullet1 = instance_create_layer(x + lengthdir_x(11, (image_angle + 90)), y + lengthdir_y(11, (image_angle + 90)),"Bullets",myBullet);			//creates bullet if cooldown 0
		with bullet1
		{
			owner = other.id;
			speed = other.speed;
			direction = other.direction;
			motion_add(other.playerDir, other.bulletSpeed);
			sprite_index = spr_bullet1;
		}
		var bullet2 = instance_create_layer(x + lengthdir_x(11, (image_angle - 90)), y + lengthdir_y(11, (image_angle - 90)),"Bullets",myBullet);			//creates bullet if cooldown 0
		with bullet2
		{
			owner = other.id;
			speed = other.speed;
			direction = other.direction;
			motion_add(other.playerDir, other.bulletSpeed);
			sprite_index = spr_bullet1;
		}
	}
	cooldown = 15;
	overheat = overheat + 2;
	audio_sound_pitch(snd_pew2,1.2);
	audio_play_sound(snd_pew2,0,0);
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

//Engine sounds



if(thrusting == true)					
{	
		if !(audio_is_playing(snd_engine2))
		{	
			eng = audio_play_sound(snd_engine2,0,1);		///sets variable for engine sound
			audio_sound_pitch(eng, 0.8);						//sets pitch of eng sound
			audio_sound_gain(eng,0,0);						///sets volume of engine to 0
			audio_sound_gain(eng,0.1,1000);					///fades in and plays engine sound
			oldThrusting = true;
		}
}	

if (oldThrusting == true) and (thrusting == false)						
{	
	var engGain = audio_sound_get_gain(eng);				///gets last gain level of engine sound		
	
	audio_stop_sound(snd_engine2);
	var engStop = audio_play_sound(snd_engine2,0,0);
	audio_sound_pitch(engStop, 0.8);
	audio_sound_gain(engStop,engGain,0);					///sets engine sound gain to last level for smooth fade out
	audio_sound_gain(engStop,0,500);						///fades out engine sound
	if (audio_sound_get_gain(engStop) = 0)
	{
		audio_stop_sound(snd_engine2);					///stops engine sound playing when it fades out
	}
	oldThrusting = false;
}
if (oldThrusting == false) and (thrusting == true)
	{
		audio_stop_sound(snd_engine2);					///stops engine sound playing if thrusting starts
	}	

	
//destroy if HP = 0

if (hp <= 0)										//destroy
{
	thisExp = instance_create_layer(x, y, "bottomParticle", obj_partSysGenericExplosion);
	thisExp.expDir = self.direction;
	thisExp.expSpeed = self.speed;
	thisExp.expx = self.x;
	thisExp.expy = self.y;
	thisExp.me = thisExp;
	audio_sound_pitch(snd_explode, 1);
	audio_sound_gain(snd_explode,1,0);
	audio_play_sound(snd_explode,0,0);
	instance_destroy();								
}

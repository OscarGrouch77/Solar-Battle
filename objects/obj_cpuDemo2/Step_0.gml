/// @description Insert description here
// You can write your code in this editor


//keeping image angle between 0 and 360
image_angle = scr_wrapAngle(image_angle, 0, 360);

//setting playerDir (used in firing bullets)
playerDir = image_angle;

//define and update enemy location variables

if instance_exists(obj_cpuDemo1)
{
	enemyDir = point_direction(x, y, obj_cpuDemo1.x, obj_cpuDemo1.y);
	enemyDis = point_distance(x, y, obj_cpuDemo1.x, obj_cpuDemo1.y);
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
	motion_add(image_angle, 0.05);
}

if (reversing == true){
	motion_add(image_angle, -0.025);
}



dirSun = point_direction(x, y, obj_sun.x, obj_sun.y);
disSun = point_distance(x, y, obj_sun.x, obj_sun.y);

//limiting speed
if (speed > 5) and (disSun >= 150) speed = max(speed - 0.1, 5);

//switch to orbit state if heading towards sun
if (disSun < 500) and (angle_difference(direction, dirSun) < 45)
{
	state = states2.orbit;
}

if (abs(angle_difference(direction, dirSun)) < 30)
{
	state = states2.orbit;
}


//orbit state if too close to sun
if (disSun < 200)
{
	state = states2.orbit;
}
	

		
		

		
	

//state behaviours

if (state == states2.idle)
#region//idle behaviour
{
	thrusting = false;
	reversing = false;
	rotate = 0;
	firing = false;
	
	
	if (instance_exists(obj_cpuDemo1))
	{
		
		//switch to chase state
		if (enemyDis >= 400)
		{
			state = states2.chase;
		}
		
		//switch to attack state if near
		if (enemyDis <= 400)
		{
			state = states2.attack;
		}
		
	}
}
#endregion

if (state == states2.orbit)
{
	#region//orbit behaviour

	
	//determine best angle of thrust to avoid sun
	var targetAngle = image_angle;
	var orbitVector1 = dirSun+90;
	var orbitVector2 = dirSun-90;
	orbitVector1 = scr_wrapAngle(orbitVector1, 0, 360);
	orbitVector2 = scr_wrapAngle(orbitVector2, 0, 360);
	
	show_debug_message("Vector1");
	show_debug_message(orbitVector1);
	show_debug_message("Vector2");
	show_debug_message(orbitVector2);
	
	
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
	
	//cheating cpu assistance to avoid sun
	motion_add(targetAngle, 0.02);
	
	if (abs(angle_difference(image_angle, targetAngle)) <= 40)
	{
		thrusting = true;
		chosen = false;
	}
	else thrusting = false;
	
	if (abs(angle_difference(direction, targetAngle)) <= 20)
	{
		state = states2.idle;
	}
	
	if (alarm[2] == -1)
	{
		alarm[2] = 60;
	}


}
#endregion

if (state == states2.chase)
{
	#region//chase behaviour
	
	if (instance_exists(obj_cpuDemo1))
	{
		
		//rotate towards player
		scr_rotateTo(enemyDir);
	
		//thrust towards player if far away
		if (enemyDis > 600)
		{
			thrusting = true;
		}
		else
		{
			thrusting = false;
		}
		
		//switch to attack state if near
		if (enemyDis <= 600)
		{
			state = states2.attack;
		}
	
		
	}

	if (alarm[2] == -1)
	{
		alarm[2] = 120;
	}
	
	
}			
#endregion
	
if (state == states2.attack)
{
	#region//attack behaviour
	
	//rotate towards player
	scr_rotateTo(aimAt);
		
	//switch to orbit state if heading towards sun
	if (disSun < 500) and abs((angle_difference(direction, dirSun)) < 45)
	{
		state = states2.orbit;
	}

	if abs((angle_difference(direction, dirSun)) < 30)
	{
		state = states2.orbit;
	}

	//orbit state if too close to sun
	if (disSun < 400)
	{
		state = states2.orbit;
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
		instance_create_layer(x,y,"Bullets",obj_bulletDemo2);			//creates bullet if cooldown 0
	}
	if (double == true)
	{
		instance_create_layer(x + lengthdir_x(11, (image_angle + 90)), y + lengthdir_y(11, (image_angle + 90)),"Bullets",obj_bulletDemo2);
		instance_create_layer(x + lengthdir_x(11, (image_angle - 90)), y + lengthdir_y(11, (image_angle - 90)),"Bullets",obj_bulletDemo2);
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
	
//destroy if HP = 0

if (hp <= 0)										//destroy
{
	//instance_create_layer(x, y, "bottomParticle", obj_partSysDemo2Explosion);
	//scr_genericExplosion(x, y, obj_partSysDemo2Explosion.player2ExplosionBot, obj_partSysDemo2Explosion.player2ExplosionTop, obj_partSysDemo2Explosion.particle1, obj_partSysDemo2Explosion.particle2);
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

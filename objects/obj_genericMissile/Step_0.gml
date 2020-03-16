/// @description Insert description here
// You can write your code in this editor

if !(target)
{
	if (global.gameType == gameType.survival){
		//if (instance_exists(owner.enemy)) and (instance_exists(owner.enemy2)){
		//	var distEnemy = point_distance(x,y,owner.enemy.x, owner.enemy.y);
		//	var distEnemy2 = point_distance(x,y,owner.enemy2.x, owner.enemy2.y);
			
		//	if (distEnemy >= distEnemy2){
		//		target = owner.enemy2;
		//	}else{
		//		target = owner.enemy;
		//	}
		//}else{
		//	if (instance_exists(owner.enemy)){
		//		target = owner.enemy;
		//	}else{
		//		target = owner.enemy2;
		//	}
		//}
		if (instance_exists(obj_cpuSurvivalParent)){
			target = instance_nearest(x,y,obj_cpuSurvivalParent);
		}else{
			target = noone;
		}
	}else{
		target = instance_nearest(x,y,owner.enemy);
	}
}

if !(instance_exists(target)){
	target = noone;
}

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
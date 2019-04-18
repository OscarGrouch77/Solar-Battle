/// @description Insert description here
// You can write your code in this editor



bulletSpeed = obj_cpuShip.bulletSpeed;

if (instance_exists(obj_cpuShip))
{
	speed = obj_cpuShip.speed
	direction = obj_cpuShip.direction;
	motion_add(obj_cpuShip.playerDir,bulletSpeed);
}

alarm[0] = 100;

bulletDir = direction

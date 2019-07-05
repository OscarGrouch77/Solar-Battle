/// @description spawn new enemy and heal player
// You can write your code in this editor



//sets type of enemy to spawn according to round number
if (global.roundNumber < 4)
{
	obj_survivalSystem.sEnemy = obj_cpuSurvivalEasy;
}
if (global.roundNumber >= 4) and (global.roundNumber < 7)
{
	obj_survivalSystem.sEnemy = obj_cpuSurvivalEasy2;
}
if (global.roundNumber >= 7) and (global.roundNumber < 10)
{
	obj_survivalSystem.sEnemy = obj_cpuSurvivalStd;
}
if (global.roundNumber >= 10)
{
	obj_survivalSystem.sEnemy = obj_cpuSurvivalParent;
}
do
	{
		randX1 = irandom(room_width);
		randY1 = irandom(room_height);
	}
	until (point_distance(randX1, randY1, obj_sun.x, obj_sun.y) > 200) 
	instance_create_layer(randX1, randY1, "topParticle", obj_spawnObjectSurvival);
	if (instance_exists(obj_player1)) obj_player1.hp++
	global.roundEnd = false;
/// @description Insert description here
// You can write your code in this editor

	if (global.roundNumber > 3)
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
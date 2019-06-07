/// @description Insert description here
// You can write your code in this editor

randomize();

global.roundNumber = 1;

gameOver = false;
sEnemy = obj_cpuSurvivalEasy;	//defines the type of enemy for this round
do
	{
		randX1 = irandom(room_width);
		randY1 = irandom(room_height);
	}
	until (point_distance(randX1, randY1, obj_sun.x, obj_sun.y) > 200)
	instance_create_layer(randX1, randY1, "topParticle", obj_spawnObjectSurvival);
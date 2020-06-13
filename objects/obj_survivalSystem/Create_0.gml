/// @description Insert description here
// You can write your code in this editor

randomize();

global.roundNumber = 1;

gameOver = false;
showHighScore = false;
sEnemy							= global.survivalRoundSpecs[0, 2];
sEnemy2							= global.survivalRoundSpecs[0, 3];


enemyNumber = 1;
global.gravitationalConstant = 1200;

do
	{
		randX1 = irandom(room_width);
		randY1 = irandom(room_height);
	}
	until (point_distance(randX1, randY1, obj_sun.x, obj_sun.y) > 400);
	var spawnObj = instance_create_layer(randX1, randY1, "topParticle", obj_spawnObjectSurvivalShaded);
	spawnObj.spawnInstance = sEnemy;

screenShot = -1;

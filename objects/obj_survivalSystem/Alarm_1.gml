/// @description NEW ROUND SETTINGS and HEAL (called from score controller) and Spawn new enemies
// You can write your code in this editor

//checks SurvivalRound Specs array for round settings
//0 = GRAV CONSTANT, 1 = NUMBER OF ENEMIES, 2 = TYPE OF ENEMY 1, 3 = TYPE OF ENEMY 2, 
//4 = NUMBER OF ASTEROIDS

var arrayRound = min(global.roundNumber - 1, array_height_2d(global.survivalRoundSpecs) - 1);

global.gravitationalConstant	= global.survivalRoundSpecs[arrayRound, 0];
enemyNumber						= global.survivalRoundSpecs[arrayRound, 1];
sEnemy							= global.survivalRoundSpecs[arrayRound, 2];
sEnemy2							= global.survivalRoundSpecs[arrayRound, 3];

/*
//sets type of enemy to spawn according to round number
if (global.roundNumber < 4)
{
	global.gravitationalConstant = 1200;
	sEnemy = obj_cpuSurvivalEasy;
	enemyNumber = 1;
}
if (global.roundNumber >= 4)
{
	global.gravitationalConstant = 1500;
	sEnemy = obj_cpuSurvivalEasy2;
	enemyNumber = 1;
}

if (global.roundNumber >= 7)
{
	global.gravitationalConstant = 1800;
	sEnemy = obj_cpuSurvivalEasy;
	enemyNumber = 2;
}

if (global.roundNumber >= 10)
{
	global.gravitationalConstant = 2000;
	sEnemy = obj_cpuSurvivalStd;
	enemyNumber = 1;
}
if (global.roundNumber >= 12)
{
	global.gravitationalConstant = 2500;
	sEnemy = obj_cpuSurvivalEasy;
	enemyNumber = 2;
}
if (global.roundNumber >= 18)
{
	global.gravitationalConstant = 3000;
	sEnemy = obj_cpuSurvivalEasy2;
	enemyNumber = 2;
}
if (global.roundNumber >= 19)
{
	sEnemy = obj_cpuSurvivalParent;
	enemyNumber = 1;
}

if (global.roundNumber >= 22)
{
	global.gravitationalConstant = 5000;
	sEnemy = obj_cpuSurvivalStd;
	enemyNumber = 2;
}

if (global.roundNumber >= 24)
{
	sEnemy = obj_cpuSurvivalParent;
	enemyNumber = 1;
}

if (global.roundNumber >= 25)
{
	global.gravitationalConstant = 6000;
	sEnemy = obj_cpuSurvivalParent;
	enemyNumber = 2;
}
*/

for(var i = enemyNumber; i > 0; i--)
{
	do
		{
			randX1 = irandom(room_width);
			randY1 = irandom(room_height);
		}
		until (point_distance(randX1, randY1, obj_sun.x, obj_sun.y) > 400);
		if (i = 1){
			var spawnObj = instance_create_layer(randX1, randY1, "topParticle", obj_spawnObjectSurvival);
			spawnObj.spawnInstance = sEnemy;
		}
		if (i = 2){
			var spawnObj = instance_create_layer(randX1, randY1, "topParticle", obj_spawnObjectSurvival);
			spawnObj.spawnInstance = sEnemy2;
		}
		
}


global.roundEnd = false;
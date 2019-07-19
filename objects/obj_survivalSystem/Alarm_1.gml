/// @description spawn new enemy and heal player called from score controller
// You can write your code in this editor



//sets type of enemy to spawn according to round number
if (global.roundNumber < 4)
{
	sEnemy = obj_cpuSurvivalEasy;
	enemyNumber = 1;
}
if (global.roundNumber >= 4)
{
	sEnemy = obj_cpuSurvivalEasy2;
	enemyNumber = 1;
}

if (global.roundNumber >= 7)
{
	sEnemy = obj_cpuSurvivalEasy;
	enemyNumber = 2;
}

if (global.roundNumber >= 10)
{
	sEnemy = obj_cpuSurvivalStd;
	enemyNumber = 1;
}
if (global.roundNumber >= 12)
{
	sEnemy = obj_cpuSurvivalEasy;
	enemyNumber = 2;
}
if (global.roundNumber >= 18)
{
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
	sEnemy = obj_cpuSurvivalParent;
	enemyNumber = 2;
}

for(var i = enemyNumber; i > 0; i--)
{
	do
		{
			randX1 = irandom(room_width);
			randY1 = irandom(room_height);
		}
		until (point_distance(randX1, randY1, obj_sun.x, obj_sun.y) > 200)
		instance_create_layer(randX1, randY1, "topParticle", obj_spawnObjectSurvival);
}
	if (instance_exists(obj_player1)) obj_player1.hp++
	global.roundEnd = false;
//scr_spawn(x, y)

var xx = argument0;
var yy = argument1;

radius = 200;

//creating spawnFlare object withing a circle around spawn point


for (var i = 0; i < 10; i++)
{
	do
	{
		var distRNG = random(radius) + random(radius);	
	}
	until (distRNG <= radius)
	
	var dir = random(360);
	var spawnX = xx + lengthdir_x(distRNG, dir);
	var spawnY = yy + lengthdir_y(distRNG, dir);
	
	var name = "spawnFlare" + string(i);
	name = instance_create_layer(spawnX, spawnY, "topParticle", obj_spawnFlare);
	
	with name
	{
		direction = point_direction(spawnX, spawnY, xx, yy);
		speed = distRNG/240;
		lifetime = 120;
		targetX = xx;
		targetY = yy;
	}
}

	
		
	

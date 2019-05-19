//scr_spawn(x, y)

var xx = argument0;
var yy = argument1;

radius = 200;

//creating spawnFlare object withing a circle around spawn point


for (var i = 0; i < 7; i++)
{
	var distRNG = random(radius) + random(radius);	//getting a nice distribution of spawn distances
	if (distRNG > radius)							//taking dists further than the mean and transposing them inside the radius
	{
		distAdjust = (distRNG - 200) * 2;
		distRNG = distRNG - distAdjust;
	}
	
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

	
		
	

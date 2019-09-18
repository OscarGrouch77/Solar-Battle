//scr_spawn(x, y)

var xx = argument0;
var yy = argument1;

radius = 50;

//creating spawnFlare object withing a circle around spawn point


for (var i = 0; i < 7; i++)
{
	var distRNG = random(radius) + random(radius);	//getting a nice distribution of spawn distances
	if (distRNG > radius)							//taking dists further than the mean and transposing them inside the radius
	{
		distAdjust = (distRNG - radius) * 2;
		distRNG = distRNG - distAdjust;
	}
	
	var dir = random(360);
	var spawnX = xx + lengthdir_x(distRNG, dir);
	var spawnY = yy + lengthdir_y(distRNG, dir);
	
	var name = "spawnFlare" + string(i);
	name = instance_create_layer(spawnX, spawnY, "scoreFlare", obj_spawnFlare);
	
	with name
	{
		var Tx = obj_scoreController.scoreX - (string_width(string(score))/2) + random_range(-string_width(string(score))/2, string_width(string(score))/2);
		var Ty = obj_scoreController.scoreY - (string_height(string(score))/2) + random_range(-string_height(string(score))/2, string_height(string(score))/2);
		direction = point_direction(spawnX, spawnY, Tx, Ty);
		speed = 20;
		lifetime = 40;
		targetX = Tx;
		targetY = Ty
	}
}

	
		
	

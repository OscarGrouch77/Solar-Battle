/// @description Insert description here
// You can write your code in this editor

//calculating direction to aim at

if(instance_exists(enemy))
{

#region quadratic method


	var relX = enemy.x - x;
	var relY = enemy.y - y;
	var relHspeed = enemy.hspeed - hspeed;
	var relVspeed = enemy.vspeed - vspeed;

	//defining quadratic terms

	var a = sqr(relHspeed) + sqr(relVspeed) - sqr(bulletSpeed);
	var b = 2*((relHspeed*relX) + (relVspeed*relY));
	var c = sqr(relX) + sqr(relY);

	//find positive value of time to hit using quadratic formula

	if (sign((sqr(b) - (4*a*c)))) == 1 and (a != 0)		//checking if quadratic method will cause error, and using iterative method if it will
	{
		show_debug_message("QUAD");
		var timeToHit = (-b - sqrt(sqr(b) - (4*a*c))) / (2*a);

		//position of target at time to hit

		var aimX = relX + (relHspeed * timeToHit);
		var aimY = relY + (relVspeed * timeToHit);
		
		////take account of cpu ship speed
		//aimX -= hspeed * timeToHit;
		//aimY -= vspeed * timeToHit;

		//angle to aim at

		aimAt = point_direction(0,0,aimX,aimY);
		
		//firing if close enough - 100 is bullet lifetime
		if (timeToHit <= 110)
			{
				if (abs(angle_difference(image_angle, aimAt)) < 5)
				{
				firing = true;
				}
				else
				{
					firing = false;
				}
			}	
	}
	else
	{
#endregion

#region iterative method

		show_debug_message("ITER");
	//relative velocity of player ship to cpu ship
		var relHSpeed = enemy.hspeed - hspeed;
		var relVSpeed = enemy.vspeed - vspeed;
		
		//show_debug_message(relHSpeed);
		//show_debug_message(relVSpeed);
		
		//relative velocity of player ship to bullet
		var bullHrel = relHSpeed - lengthdir_x(bulletSpeed,image_angle);
		var bullVrel = relVSpeed - lengthdir_y(bulletSpeed,image_angle);
		
		//defining variables
		var enemyDis = point_distance(x, y, enemy.x, enemy.y);
		var timeToHit = enemyDis/point_distance(0,0,bullHrel,bullVrel);
		
		//predicting x and y of enemy when bullet arrives
		var aimX = enemy.x + lengthdir_x(enemy.speed * timeToHit, enemy.direction);
		var aimY = enemy.y + lengthdir_y(enemy.speed * timeToHit, enemy.direction);
		
		//second iteration of prediction
		//new variables
		var enemyDis2 = point_distance(x, y, aimX, aimY);
		var timeToHit2 = enemyDis2/point_distance(0,0,bullHrel,bullVrel);
		//predicting x and y of enemy with new variables
		var aimX2 = enemy.x + lengthdir_x(enemy.speed * timeToHit2, enemy.direction);
		var aimY2 = enemy.y + lengthdir_y(enemy.speed * timeToHit2, enemy.direction);
		
		//third iteration of prediction
		//new variables
		var enemyDis3 = point_distance(x, y, aimX2, aimY2);
		var timeToHit3 = enemyDis3/point_distance(0,0,bullHrel,bullVrel);
		//predicting x and y of enemy with new variables
		var aimX3 = enemy.x + lengthdir_x(enemy.speed * timeToHit3, enemy.direction);
		var aimY3 = enemy.y + lengthdir_y(enemy.speed * timeToHit3, enemy.direction);
		
		//fourth iteration of prediction
		//new variables
		var enemyDis4 = point_distance(x, y, aimX3, aimY3);
		var timeToHit4 = enemyDis4/point_distance(0,0,bullHrel,bullVrel);
		//predicting x and y of enemy with new variables
		aimX4 = enemy.x + lengthdir_x(enemy.speed * timeToHit4, enemy.direction);
		aimY4 = enemy.y + lengthdir_y(enemy.speed * timeToHit4, enemy.direction);
		
		//fifth iteration of prediction
		//new variables
		var enemyDis5 = point_distance(x, y, aimX4, aimY4);
		var timeToHit5 = enemyDis5/point_distance(0,0,bullHrel,bullVrel);
		//predicting x and y of enemy with new variables
		aimX5 = enemy.x + lengthdir_x(enemy.speed * timeToHit5, enemy.direction);
		aimY5 = enemy.y + lengthdir_y(enemy.speed * timeToHit5, enemy.direction);
		
		//take account of cpu ship speed
		aimX5 -= hspeed * timeToHit5;
		aimY5 -= vspeed * timeToHit5;
		
		//deflection aiming
		aimAt = point_direction(x, y, aimX5, aimY5);
				
		//firing if close enough - 100 is bullet lifetime
		if (timeToHit4 <= 110)
		{
			if (abs(angle_difference(image_angle, aimAt)) < 10)
			{
				firing = true;
			}
			else
			{
				firing = false;
			}
		}					
	}	


#endregion

}
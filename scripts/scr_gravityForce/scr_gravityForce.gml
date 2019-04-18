//scr_gravityForce(x,y)

var xx = argument0;
var yy = argument1;


var distanceObject = point_distance(xx, yy, obj_sun.x, obj_sun.y);		//distance from object to sun
var directionObject = point_direction(xx, yy, obj_sun.x, obj_sun.y);	//direction from object to sun
	
	
var gravityForce = global.gravitationalConstant/(distanceObject*distanceObject);		///calculating force of gravity
		
	if (distanceObject > 30)
	{
				motion_add(directionObject, gravityForce);					///applying force of gravity F/M = A
				if (speed >= 100) speed = 100;								///limiting top speed	
	}
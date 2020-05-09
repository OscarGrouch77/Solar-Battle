///@function gravGunPush
///@argument xOrigin
///@argument yOrigin
///@argument xTarget
///@argument yTarget

//this script adds motion to the instance calling it based on it's distance and direction from the origin

var xxO = argument0;
var yyO = argument1;
var xxT = argument2;
var yyT = argument3;

var gravGunPower = 16000;


var distanceObject = point_distance(xxO, yyO, xxT, yyT);		//distance from gravGun to target
var directionObject = point_direction(xxO, yyO, xxT, yyT);	//direction from gravGun to target
	
	
var pushForce = gravGunPower/(distanceObject*distanceObject);		///calculating force of push

motion_add(directionObject, pushForce);					//adding motion to target(instance calling this script)
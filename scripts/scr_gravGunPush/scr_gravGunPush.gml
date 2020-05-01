///@function gravGunPush
///@argument xOrigin
///@argument yOrigin
///@argument xTarget
///@argument yTarget



var xxO = argument0;
var yyO = argument1;
var xxT = argument2;
var yyT = argument3;

var gravGunPower = 5000;


var distanceObject = point_distance(xxO, yyO, xxT, xxT);		//distance from gravGun to target
var directionObject = point_direction(xxO, yyO, xxT, yyT);	//direction from gravGun to target
	
	
var gravityForce = gravGunPower/(distanceObject*distanceObject);		///calculating force of push

motion_add(directionObject, gravityForce);					//adding motion to target
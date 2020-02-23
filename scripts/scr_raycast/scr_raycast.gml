///scr_raycast(startX, startY, endX, endY, target)
///@function raycast
///@argument startX
///@argument startY
///@argument endX
///@argument endY
///@argument target

//Establish argument variables
var startX = argument0;
var startY = argument1;
var endX = argument2;
var endY = argument3;
var target = argument4;

//Establish direction and max distance to raycast
var len = 0;
var dir = point_direction(startX, startY, endX, endY);
var maxL = point_distance(startX, startY, endX, endY);

//Begin raycast loop
while(len < maxL) 
{
    var castX = startX + lengthdir_x(len, dir);
    var castY = startY + lengthdir_y(len, dir);
    if(collision_point(castX, castY, target, true, false)) 
	{
        hitpoint[0] = castX;
        hitpoint[1] = castY;
        return hitpoint;
    }
	

    len++;
}
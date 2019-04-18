//scr_rotateTo(desired angle)

var desiredAngle = argument0;


//angleMinusDesired = image_angle - desiredAngle;
angleDiff = angle_difference(image_angle, desiredAngle);

/*
if (abs(angleMinusDesired) > 180)
{
	if (image_angle > desiredAngle)
	{
		angleDiff = -1 * ((360 - image_angle) + desiredAngle);
	}
	else
	{
		angleDiff = (360 - desiredAngle) + image_angle;
	}
}
*/

rotate = -sign(angleDiff);
/// @description Insert description here
// You can write your code in this editor


gameOver = true;

survivedRounds = global.roundNumber - 1;


//take snapshot and fill array for pause screen
allObjects = 0;
var offset = 0;
for (var i = 0; i < instance_count; ++i)
{
	if (instance_find(all, i).sprite_index != -1)
	{
		allObjects[i - offset, 0] = instance_find(all, i).sprite_index;
		allObjects[i - offset, 1] = instance_find(all, i).image_index;
		allObjects[i - offset, 2] = instance_find(all, i).x;
		allObjects[i - offset, 3] = instance_find(all, i).y;
		allObjects[i - offset, 4] = instance_find(all, i).image_xscale;
		allObjects[i - offset, 5] = instance_find(all, i).image_yscale;
		allObjects[i - offset, 6] = instance_find(all, i).image_angle;
		allObjects[i - offset, 7] = instance_find(all, i).image_blend;
		allObjects[i - offset, 8] = instance_find(all, i).image_alpha;
	}
	else
	++offset;
}

if (score > highscore_value(10))
{
	instance_create_layer(room_width/2, room_height/2 + 270, "UI", obj_inputName);
}
else
{
	instance_create_layer(x,y, "UI", obj_menuButtonExit);
	instance_create_layer(x,y, "UI", obj_menuButtonTryAgain);
}

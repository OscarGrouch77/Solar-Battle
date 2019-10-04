/// @description Insert description here
// You can write your code in this editor

if (global.gameType == gameType.oneDuel)
{
	if (obj_shipSelectp1.lockedIn) and !(instance_exists(obj_menuButtonGenericStart))
	{
		instance_create_layer(room_width*0.5, room_height*0.8, "Ships", obj_menuButtonGenericStart);
	}
	if !(obj_shipSelectp1.lockedIn)
	{
		instance_destroy(obj_menuButtonGenericStart);
	}
}

if (global.gameType == gameType.survival)
{
	if (obj_shipSelectp1.lockedIn) and !(instance_exists(obj_menuButtonGenericStart))
	{
		instance_create_layer(room_width*0.5, room_height*0.8, "Ships", obj_menuButtonGenericStart);
	}
	if !(obj_shipSelectp1.lockedIn)
	{
		instance_destroy(obj_menuButtonGenericStart);
	}
}

if (global.gameType == gameType.twoDuel)
{
	if (obj_shipSelectp1.lockedIn) && (obj_shipSelectp2.lockedIn)
	{
		if !(instance_exists(obj_menuButtonGenericStart))
		{
			instance_create_layer(room_width*0.5, room_height*0.8, "Ships", obj_menuButtonGenericStart);
		}
	}
	else instance_destroy(obj_menuButtonGenericStart);
}
	
	
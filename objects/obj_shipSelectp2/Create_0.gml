/// @description Insert description here
// You can write your code in this editor


//initialise 2d array of ship sprite and Y offsets
ship[3,1] = spr_alien1;
ship[3,0] = 0;
ship[2,1] = spr_playerShipType2;
ship[2,0] = 0
ship[1,1] = spr_player1v2;
ship[1,0] = 10;
ship[0,1] = spr_player1;
ship[0,0] = 12;

choice = 0;

Vcentre = room_width/3 * 2;

selectButton = instance_create_layer(Vcentre, 650, "Ships", obj_menuButtonSelect1);
lockedIn = false;
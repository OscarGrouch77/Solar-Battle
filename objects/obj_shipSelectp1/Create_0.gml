/// @description Insert description here
// You can write your code in this editor


//initialise 2d array of ship sprite and Y offsets
ship[3,1] = spr_arachnid;
ship[3,0] = 0;
ship[2,1] = spr_longbow;
ship[2,0] = 12;
ship[1,1] = spr_brawler;
ship[1,0] = 0;
ship[0,1] = spr_axion;
ship[0,0] = 10;

choice = 0;

//setting Vtop and Vcentre for alignment
if (global.gameType == gameType.twoDuel)
{
	Vcentre = room_width/3;
}
else Vcentre = room_width*0.5;
Vtop = 90;

//create "lock in" button and lockedIn variable
selectButton = instance_create_layer(Vcentre, room_height - 130, "Ships", obj_menuButtonLockIn);
lockedIn = false;

//ship stat variables
thrustLength = 0;
rateLength = 0;
rangeLength = 0;
accuracyLength = 0;
agilityLength = 0;

//tool tip
showTip = false;

//create variables for left, right, fire
Kleft = global.p1Left;
Kright = global.p1Right;
Kfire = global.p1Fire;

/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

switch(sprite_index)
{
	case spr_axion: thrustYOffset = 5; thrustXOffset = 19; thrust = global.shipStats[0,2]/100; fireRate = 30 - (global.shipStats[0,3]*3); spray = 10 - global.shipStats[0,5]; missileAmmo = 2; missile = true; bulletSpeed = 8; bulletLife = 100; turnSpeed = global.shipStats[0,6]*0.4; break;
	case spr_brawler: thrustYOffset = 16; thrustXOffset = 28; thrust = global.shipStats[1,2]/100; fireRate = 30 - (global.shipStats[1,3]*2); spray = 10 - global.shipStats[1,5]; missileAmmo = 0; missile = false; bulletSpeed = 6.5; bulletLife = 100; turnSpeed = global.shipStats[1,6]*0.4; break;
	case spr_longbow: thrustYOffset = 5; thrustXOffset = 24; thrust = global.shipStats[2,2]/100; fireRate = 30 - (global.shipStats[2,3]*2); spray = 10 - global.shipStats[2,5]; missileAmmo = 0; missile = false; bulletSpeed = 4; bulletLife = 100; turnSpeed = global.shipStats[2,6]*0.4; break;
	case spr_arachnid: thrustYOffset = 9; thrustXOffset = 25; thrust = global.shipStats[3,2]/100; fireRate = 30 - (global.shipStats[3,3]*2); spray = 10 - global.shipStats[3,5]; missileAmmo = 0 missile = false; bulletSpeed = 6; bulletLife = 100; turnSpeed = global.shipStats[3,6]*0.4; break;
}


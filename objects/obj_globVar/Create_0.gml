/// @description Insert description here
// You can write your code in this editor

global.gravitationalConstant = 2000;
global.scorePlayer1 = 0;
global.scorePlayer2 = 0;
global.scoreCpu = 0;
global.roundNumber = 1;
global.difficulty = 0;
score = 0;
global.multiplier = 1;
global.roundBonus = 0;
global.roundEnd = false;
global.name = "";
global.p1Ship = spr_axion;
global.p2Ship = spr_brawler;

global.checkProgress = false;


enum gameType
{
	oneDuel,
	twoDuel,
	survival,
}

global.gameType = gameType.oneDuel;

//create array for ship info 0 = "NAME", 1 = "ROLE", 2 = THRUST, 3 = FIRE RATE, 4 = RANGE, 5 = ACCURACY, 6 = AGILITY, 7 = ARMOUR, 8 = "DESCRIPTION", 9 = unlocked, 10 = "unlock conditions"
//Alien Tech - Arachnid
global.shipStats[3,10] = "TO UNLOCK: REACH ROUND 20 IN SURVIVAL";
global.shipStats[3,9] = false;
global.shipStats[3,8] = "The Arachnoid is an Alien craft with highly advanced enigmatic technology. Powerful thrusters and high rate of fire make the Arachnid ideal as a close range scrapper. Can charge shot for extra range and accuracy.";
global.shipStats[3,7] = 10;
global.shipStats[3,6] = 6;
global.shipStats[3,5] = 2;
global.shipStats[3,4] = 5;
global.shipStats[3,3] = 7;
global.shipStats[3,2] = 8;
global.shipStats[3,1] = "Alien Tech";
global.shipStats[3,0] = "Arachnoid";
//Sniper - Longbow
global.shipStats[2,10] = "TO UNLOCK: REACH ROUND 10 IN SURVIVAL";
global.shipStats[2,9] = false;
global.shipStats[2,8] = "Very accurate, high velocity rail gun make the Longbow deadly at long range. Lacks maneuverability and thrust, but can disable opponents that get too close with an EMP burst (WARNING - this will temporarily disable all weapons systems within range including your own!).";
global.shipStats[2,7] = 10;
global.shipStats[2,6] = 3;
global.shipStats[2,5] = 10;
global.shipStats[2,4] = 10;
global.shipStats[2,3] = 2;
global.shipStats[2,2] = 4;
global.shipStats[2,1] = "Sniper";
global.shipStats[2,0] = "Longbow";
//Assault - Brawler
global.shipStats[1,10] = "TO UNLOCK: REACH ROUND 5 IN SURVIVAL";
global.shipStats[1,9] = false;
global.shipStats[1,8] = "The Brawler is designed to get close to an enemy and unleash hell. This ship has a high rate of fire, and powerful thrusters, but lacks range and accuracy. For best results - wait until you see the whites of their eyes!";
global.shipStats[1,7] = 10;
global.shipStats[1,6] = 7;
global.shipStats[1,5] = 3;
global.shipStats[1,4] = 2;
global.shipStats[1,3] = 9;
global.shipStats[1,2] = 8;
global.shipStats[1,1] = "Assault";
global.shipStats[1,0] = "Brawler";
//Generalist - Axion
global.shipStats[0,10] = "TO UNLOCK: ALWAYS UNLOCKED";
global.shipStats[0,9] = true;
global.shipStats[0,8] = "The Axion is a good starter ship: an all-rounder with good thrust, rate of fire, and accuracy. Jack of all trades, master of none. Comes equipped with two homing missiles.";
global.shipStats[0,7] = 10;
global.shipStats[0,6] = 5;
global.shipStats[0,5] = 8;
global.shipStats[0,4] = 6;
global.shipStats[0,3] = 5;
global.shipStats[0,2] = 7;
global.shipStats[0,1] = "Generalist";
global.shipStats[0,0] = "Axion";

//load progress from ini file
ini_open("progress.ini");
//ini_write_real("unlocks", "brawler", 0); //uncomment and run to reset unlocks
//ini_write_real("unlocks", "longbow", 0); //uncomment and run to reset unlocks
//ini_write_real("unlocks", "arachnoid", 0); //uncomment and run to reset unlocks
global.shipStats[0,9] = ini_read_real("unlocks", "axion", 1);
global.shipStats[1,9] = ini_read_real("unlocks", "brawler", 0);
global.shipStats[2,9] = ini_read_real("unlocks", "longbow", 0);
global.shipStats[3,9] = ini_read_real("unlocks", "arachnoid", 0);

ini_close();



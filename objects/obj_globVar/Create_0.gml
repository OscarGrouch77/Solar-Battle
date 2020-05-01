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

//gravity manipulator - Kepler
global.shipStats[4,10] = "TO UNLOCK: REACH ROUND 25 IN SURVIVAL";
global.shipStats[4,9] = false;
global.shipStats[4,8] = "The Kepler can control the force of gravity!";
global.shipStats[4,7] = 10;
global.shipStats[4,6] = 5;
global.shipStats[4,5] = 5;
global.shipStats[4,4] = 6;
global.shipStats[4,3] = 6;
global.shipStats[4,2] = 8;
global.shipStats[4,1] = "Grav Tech";
global.shipStats[4,0] = "Kepler";

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
global.shipStats[2,8] = "Very accurate, high velocity rail gun make the Longbow deadly at long range. Lacks maneuverability and thrust, but can disrupt energy projectiles and disable opponents that get too close with a powerful EMP burst (WARNING - this will temporarily disable all weapon systems within range including your own!).";
global.shipStats[2,7] = 10;
global.shipStats[2,6] = 4;
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


//array for survival changes by round: 0 = GRAV CONSTANT, 1 = NUMBER OF ENEMIES, 2 = TYPE OF ENEMY 1, 3 = TYPE OF ENEMY 2, 
//4 = NUMBER OF ASTEROIDS, 5 = ROUND CHANGES FOR DISPLAY(STRING)

//ROUND 26+
global.survivalRoundSpecs[25,5] = "";
global.survivalRoundSpecs[25,4] = 3;
global.survivalRoundSpecs[25,3] = obj_cpuSurvivalHard;
global.survivalRoundSpecs[25,2] = obj_cpuSurvivalHard;
global.survivalRoundSpecs[25,1] = 2;
global.survivalRoundSpecs[25,0] = 6000;

//ROUND 25
global.survivalRoundSpecs[24,5] = "ENEMY SKILL +  GRAVITY +";
global.survivalRoundSpecs[24,4] = 3;
global.survivalRoundSpecs[24,3] = obj_cpuSurvivalHard;
global.survivalRoundSpecs[24,2] = obj_cpuSurvivalHard;
global.survivalRoundSpecs[24,1] = 2;
global.survivalRoundSpecs[24,0] = 6000;

//ROUND 24
global.survivalRoundSpecs[23,5] = "ENEMY SKILL +";
global.survivalRoundSpecs[23,4] = 3;
global.survivalRoundSpecs[23,3] = obj_cpuSurvivalHard;
global.survivalRoundSpecs[23,2] = obj_cpuSurvivalEasy;
global.survivalRoundSpecs[23,1] = 2;
global.survivalRoundSpecs[23,0] = 5000;

//ROUND 23
global.survivalRoundSpecs[22,5] = "GRAVITY +";
global.survivalRoundSpecs[22,4] = 3;
global.survivalRoundSpecs[22,3] = obj_cpuSurvivalStd;
global.survivalRoundSpecs[22,2] = obj_cpuSurvivalEasy;
global.survivalRoundSpecs[22,1] = 2;
global.survivalRoundSpecs[22,0] = 5000;

//ROUND 22
global.survivalRoundSpecs[21,5] = "ENEMY NUMBER +  ENEMY SKILL -";
global.survivalRoundSpecs[21,4] = 3;
global.survivalRoundSpecs[21,3] = obj_cpuSurvivalStd;
global.survivalRoundSpecs[21,2] = obj_cpuSurvivalEasy;
global.survivalRoundSpecs[21,1] = 2;
global.survivalRoundSpecs[21,0] = 3000;

//ROUND 21
global.survivalRoundSpecs[20,5] = "";
global.survivalRoundSpecs[20,4] = 3;
global.survivalRoundSpecs[20,3] = obj_cpuSurvivalHard;
global.survivalRoundSpecs[20,2] = obj_cpuSurvivalEasy2;
global.survivalRoundSpecs[20,1] = 1;
global.survivalRoundSpecs[20,0] = 3000;

//ROUND 20
global.survivalRoundSpecs[19,5] = "";
global.survivalRoundSpecs[19,4] = 3;
global.survivalRoundSpecs[19,3] = obj_cpuSurvivalHard;
global.survivalRoundSpecs[19,2] = obj_cpuSurvivalEasy2;
global.survivalRoundSpecs[19,1] = 1;
global.survivalRoundSpecs[19,0] = 3000;

//ROUND 19
global.survivalRoundSpecs[18,5] = "ENEMY NUMBER -  ENEMY SKILL +";
global.survivalRoundSpecs[18,4] = 3;
global.survivalRoundSpecs[18,3] = obj_cpuSurvivalHard;
global.survivalRoundSpecs[18,2] = obj_cpuSurvivalEasy2;
global.survivalRoundSpecs[18,1] = 1;
global.survivalRoundSpecs[18,0] = 3000;

//ROUND 18
global.survivalRoundSpecs[17,5] = "GRAVITY +";
global.survivalRoundSpecs[17,4] = 3;
global.survivalRoundSpecs[17,3] = obj_cpuSurvivalStd;
global.survivalRoundSpecs[17,2] = obj_cpuSurvivalEasy2;
global.survivalRoundSpecs[17,1] = 2;
global.survivalRoundSpecs[17,0] = 3000;

//ROUND 17
global.survivalRoundSpecs[16,5] = "";
global.survivalRoundSpecs[16,4] = 3;
global.survivalRoundSpecs[16,3] = obj_cpuSurvivalStd;
global.survivalRoundSpecs[16,2] = obj_cpuSurvivalEasy2;
global.survivalRoundSpecs[16,1] = 2;
global.survivalRoundSpecs[16,0] = 2500;

//ROUND 16
global.survivalRoundSpecs[15,5] = "ENEMY SKILL +";
global.survivalRoundSpecs[15,4] = 3;
global.survivalRoundSpecs[15,3] = obj_cpuSurvivalStd;
global.survivalRoundSpecs[15,2] = obj_cpuSurvivalEasy2;
global.survivalRoundSpecs[15,1] = 2;
global.survivalRoundSpecs[15,0] = 2500;

//ROUND 15
global.survivalRoundSpecs[14,5] = "ASTEROID +";
global.survivalRoundSpecs[14,4] = 3;
global.survivalRoundSpecs[14,3] = obj_cpuSurvivalEasy2;
global.survivalRoundSpecs[14,2] = obj_cpuSurvivalEasy2;
global.survivalRoundSpecs[14,1] = 2;
global.survivalRoundSpecs[14,0] = 2500;

//ROUND 14
global.survivalRoundSpecs[13,5] = "ENEMY SKILL +";
global.survivalRoundSpecs[13,4] = 1;
global.survivalRoundSpecs[13,3] = obj_cpuSurvivalEasy2;
global.survivalRoundSpecs[13,2] = obj_cpuSurvivalEasy2;
global.survivalRoundSpecs[13,1] = 2;
global.survivalRoundSpecs[13,0] = 2500;

//ROUND 13
global.survivalRoundSpecs[12,5] = "";
global.survivalRoundSpecs[12,4] = 2;
global.survivalRoundSpecs[12,3] = obj_cpuSurvivalEasy;
global.survivalRoundSpecs[12,2] = obj_cpuSurvivalEasy2;
global.survivalRoundSpecs[12,1] = 2;
global.survivalRoundSpecs[12,0] = 2500;

//ROUND 12
global.survivalRoundSpecs[11,5] = "ENEMY NUMBER +  ENEMY SKILL -";
global.survivalRoundSpecs[11,4] = 2;
global.survivalRoundSpecs[11,3] = obj_cpuSurvivalEasy;
global.survivalRoundSpecs[11,2] = obj_cpuSurvivalEasy2;
global.survivalRoundSpecs[11,1] = 2;
global.survivalRoundSpecs[11,0] = 2500;

//ROUND 11
global.survivalRoundSpecs[10,5] = "GRAVITY +";
global.survivalRoundSpecs[10,4] = 2;
global.survivalRoundSpecs[10,3] = obj_cpuSurvivalStd;
global.survivalRoundSpecs[10,2] = obj_cpuSurvivalStd;
global.survivalRoundSpecs[10,1] = 1;
global.survivalRoundSpecs[10,0] = 2500;

//ROUND 10
global.survivalRoundSpecs[9,5] = "ENEMY SKILL +";
global.survivalRoundSpecs[9,4] = 2;
global.survivalRoundSpecs[9,3] = obj_cpuSurvivalStd;
global.survivalRoundSpecs[9,2] = obj_cpuSurvivalStd;
global.survivalRoundSpecs[9,1] = 1;
global.survivalRoundSpecs[9,0] = 2000;

//ROUND 9
global.survivalRoundSpecs[8,5] = "ENEMY NUMBER -  GRAVITY +";
global.survivalRoundSpecs[8,4] = 2;
global.survivalRoundSpecs[8,3] = obj_cpuSurvivalEasy2;
global.survivalRoundSpecs[8,2] = obj_cpuSurvivalEasy;
global.survivalRoundSpecs[8,1] = 1;
global.survivalRoundSpecs[8,0] = 2000;

//ROUND 8
global.survivalRoundSpecs[7,5] = "ASTEROID +";
global.survivalRoundSpecs[7,4] = 2;
global.survivalRoundSpecs[7,3] = obj_cpuSurvivalEasy2;
global.survivalRoundSpecs[7,2] = obj_cpuSurvivalEasy;
global.survivalRoundSpecs[7,1] = 2;
global.survivalRoundSpecs[7,0] = 1800;

//ROUND 7
global.survivalRoundSpecs[6,5] = "ENEMY NUMBER +";
global.survivalRoundSpecs[6,4] = 1;
global.survivalRoundSpecs[6,3] = obj_cpuSurvivalEasy2;
global.survivalRoundSpecs[6,2] = obj_cpuSurvivalEasy;
global.survivalRoundSpecs[6,1] = 2;
global.survivalRoundSpecs[6,0] = 1800;

//ROUND 6
global.survivalRoundSpecs[5,5] = "";
global.survivalRoundSpecs[5,4] = 1;
global.survivalRoundSpecs[5,3] = obj_cpuSurvivalEasy2;
global.survivalRoundSpecs[5,2] = obj_cpuSurvivalEasy2;
global.survivalRoundSpecs[5,1] = 1;
global.survivalRoundSpecs[5,0] = 1500;

//ROUND 5
global.survivalRoundSpecs[4,5] = "";
global.survivalRoundSpecs[4,4] = 1;
global.survivalRoundSpecs[4,3] = obj_cpuSurvivalEasy2;
global.survivalRoundSpecs[4,2] = obj_cpuSurvivalEasy2;
global.survivalRoundSpecs[4,1] = 1;
global.survivalRoundSpecs[4,0] = 1500;

//ROUND 4
global.survivalRoundSpecs[3,5] = "ENEMY SKILL +";
global.survivalRoundSpecs[3,4] = 1;
global.survivalRoundSpecs[3,3] = obj_cpuSurvivalEasy2;
global.survivalRoundSpecs[3,2] = obj_cpuSurvivalEasy2;
global.survivalRoundSpecs[3,1] = 1;
global.survivalRoundSpecs[3,0] = 1500;

//ROUND 3
global.survivalRoundSpecs[2,5] = "GRAVITY +";
global.survivalRoundSpecs[2,4] = 1;
global.survivalRoundSpecs[2,3] = obj_cpuSurvivalEasy;
global.survivalRoundSpecs[2,2] = obj_cpuSurvivalEasy;
global.survivalRoundSpecs[2,1] = 1;
global.survivalRoundSpecs[2,0] = 1500;

//ROUND 2
global.survivalRoundSpecs[1,5] = "ASTEROID +";
global.survivalRoundSpecs[1,4] = 1;
global.survivalRoundSpecs[1,3] = obj_cpuSurvivalEasy;
global.survivalRoundSpecs[1,2] = obj_cpuSurvivalEasy;
global.survivalRoundSpecs[1,1] = 1;
global.survivalRoundSpecs[1,0] = 1200;

//ROUND 1
global.survivalRoundSpecs[0,5] = "";
global.survivalRoundSpecs[0,4] = 0;
global.survivalRoundSpecs[0,3] = obj_cpuSurvivalEasy;
global.survivalRoundSpecs[0,2] = obj_cpuSurvivalEasy;
global.survivalRoundSpecs[0,1] = 1;
global.survivalRoundSpecs[0,0] = 1200;



//load progress from ini file
ini_open("progress.ini");
//ini_write_real("unlocks", "brawler", 0); //uncomment and run to reset unlocks remember to recomment afterwards
//ini_write_real("unlocks", "longbow", 0); //uncomment and run to reset unlocks remember to recomment afterwards
//ini_write_real("unlocks", "arachnoid", 0); //uncomment and run to reset unlocks remember to recomment afterwards
//ini_write_real("unlocks", "kepler", 0); //uncomment and run to reset unlocks remember to recomment afterwards

//ini_write_real("unlocks", "brawler", 1); //uncomment and run to unlock
//ini_write_real("unlocks", "longbow", 1); //uncomment and run to unlock
//ini_write_real("unlocks", "arachnoid", 1); //uncomment and run to unlock
ini_write_real("unlocks", "kepler", 1); //uncomment and run to unlock
global.shipStats[0,9] = ini_read_real("unlocks", "axion", 1);
global.shipStats[1,9] = ini_read_real("unlocks", "brawler", 0);
global.shipStats[2,9] = ini_read_real("unlocks", "longbow", 0);
global.shipStats[3,9] = ini_read_real("unlocks", "arachnoid", 0);
global.shipStats[4,9] = ini_read_real("unlocks", "kepler", 0);

ini_close();



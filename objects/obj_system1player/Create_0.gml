/// @description Insert description here
// You can write your code in this editor

randomize();


gameOver = false;
gamePaused = false;
winner = 0;
takeSnapShot = false;
dEnemy = obj_cpuDuelEasy;
screenShot = -1;



if (global.difficulty == 0) dEnemy = obj_cpuDuelEasy;
if (global.difficulty == 1) dEnemy = obj_cpuDuelStd;
if (global.difficulty == 2) dEnemy = obj_cpuDuelHard;

instance_create_layer(obj_sun.x + (room_width/4), obj_sun.y, "Instances", dEnemy);

global.gravitationalConstant = 2000;


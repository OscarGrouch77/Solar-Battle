/// @description Insert description here
// You can write your code in this editor

//global.p1Left = ord("A");
//global.p1Right = ord("D");
//global.p1Thrust = ord("W");
//global.p1Reverse = ord("S");
//global.p1Fire = vk_space;
//global.p1AltFire = ord("M");

//global.p2Left = vk_left;
//global.p2Right = vk_right;
//global.p2Thrust = vk_up;
//global.p2Reverse = vk_down;
//global.p2Fire = vk_enter;
//global.p2AltFire = vk_add;

//get key bindings from ini
ini_open("settings.ini");
//load p1 controls from ini
global.p1Left = ini_read_real("controls", "p1Left", ord("A"));
global.p1Right = ini_read_real("controls", "p1Right", ord("D"));
global.p1Thrust = ini_read_real("controls", "p1Thrust", ord("W"));
global.p1Reverse = ini_read_real("controls", "p1Reverse", ord("S"));
global.p1Fire = ini_read_real("controls", "p1Fire", vk_space);
global.p1AltFire = ini_read_real("controls", "p1AltFire", ord("M"));

//load p2 controls from ini
global.p2Left = ini_read_real("controls", "p2Left", vk_left);
global.p2Right = ini_read_real("controls", "p2Right", vk_right);
global.p2Thrust = ini_read_real("controls", "p2Thrust", vk_up);
global.p2Reverse = ini_read_real("controls", "p2Reverse", vk_down);
global.p2Fire = ini_read_real("controls", "p2Fire", vk_enter);
global.p2AltFire = ini_read_real("controls", "p2AltFire", vk_add);

ini_close();
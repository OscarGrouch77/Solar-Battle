/// @description Insert description here
// You can write your code in this editor


//checks progress and unlocks content appropriately
if (global.checkProgress == true)
{
	if (global.roundNumber = 5)
	{
		ini_open("progress.ini");
		ini_write_real("unlocks", "brawler", 1);
		global.shipStats[1,9] = ini_read_real("unlocks", "brawler", 0);
		ini_close();
	}

	if (global.roundNumber = 10)
	{
		ini_open("progress.ini");
		ini_write_real("unlocks", "longbow", 1);
		global.shipStats[2,9] = ini_read_real("unlocks", "longbow", 0);
		ini_close();
	}

	if (global.roundNumber = 20)
	{
		ini_open("progress.ini");
		ini_write_real("unlocks", "arachnoid", 1);
		global.shipStats[3,9] = ini_read_real("unlocks", "arachnoid", 0);
		ini_close();
	}
	global.checkProgress = false;
}
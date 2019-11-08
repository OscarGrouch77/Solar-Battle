/// @description Insert description here
// You can write your code in this editor

part_system_destroy(empPartSys.empSparks);

if(instance_exists(owner))
{
	owner.empActive = false;
}

/// @description Insert description here
// You can write your code in this editor

part_type_destroy(empPartSys.spark);
part_emitter_destroy(empPartSys.empSparks, empSparkEm);
part_system_destroy(empPartSys.empSparks);

if(instance_exists(owner))
{
	owner.empActive = false;
}

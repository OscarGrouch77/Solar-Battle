/// @description Insert description here
// You can write your code in this editor
//create list of objects/instances that can be affected by the gravity gun
if(instance_exists(owner)){
	ds_list_add(list_pushableObjects, obj_asteroidBig, owner.enemy, owner.enemy2, obj_genericBullet);
}


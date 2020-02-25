/// @description Insert description here
// You can write your code in this editor
var background_layer = layer_get_id("Background");
var background_id = layer_background_get_id(background_layer);

if ((room_width/room_height) > 2.3){	
	layer_background_sprite(background_id, spr_nebula2560x1080);
}else{
	layer_background_sprite(background_id, spr_nebula);
}


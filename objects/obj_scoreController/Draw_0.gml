/// @description Insert description here
// You can write your code in this editor
/*
//pause drawing screenshot
if (gamePaused == true)
{
	//draw screenshot
	draw_set_alpha(1);
	draw_set_font(fnt_menu);
	draw_set_color(c_white);
    draw_sprite_ext(screenShot,0,0,0,1,1,0,c_white,1);
	draw_sprite(spr_sun, 1, room_width*0.5, room_height*0.5);
	draw_sprite(spr_suntexture, 1, room_width*0.5, room_height*0.5);
	draw_sprite_ext(spr_sunGlow3, 1, room_width*0.5, room_height*0.5, 0.3, 0.3, 0, c_white, 0.8);
	draw_sprite_ext(spr_sunGlow3, 1, room_width*0.5, room_height*0.5, 1, 1, 0, c_white, 0.5);
	draw_sprite_ext(spr_orangeGlowBig, 1, room_width*0.5, room_height*0.5, 2, 2, 0, c_white, 0.8);
	//dim screenshot
	draw_set_colour(c_black);
	draw_set_alpha(0.5);
    draw_rectangle(0, 0, room_width, room_height, 0);
}

else
{
	if(sprite_exists(screenShot))
		{
			sprite_delete(screenShot);
		}
}
*/




//display changes to game this round
if (displayRoundChanges == true){
	var arrayRound = min(array_height_2d(global.survivalRoundSpecs) -1, global.roundNumber -1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	//draw flashing warning message
	if (global.survivalRoundSpecs[arrayRound,5] != ""){
		draw_set_font(fnt_multi2);
		var alpha = clamp(pulse, 0.5, 1);
		draw_set_alpha(alpha);
		colour = merge_color(c_red, c_white, pulse);
		draw_set_color(colour);
		draw_text(room_width*0.5, room_height*0.7, "WARNING: ANOMALY DETECTED!");
	}
	
	//draw message of changes this round
	draw_set_alpha(1);
	draw_set_font(fnt_menu);
	draw_set_color(c_yellow);
	draw_text(room_width*0.5, room_height*0.8, global.survivalRoundSpecs[arrayRound,5]);
}




/// @description Insert description here
// You can write your code in this editor


if (getReady = true)
{
	for (var i = 0; i < array_height_2d(allObjects); ++i)
	{
		draw_sprite_ext(
		allObjects[i,0],
		allObjects[i,1],
		allObjects[i,2],
		allObjects[i,3],
		allObjects[i,4],
		allObjects[i,5],
		allObjects[i,6],
		allObjects[i,7],
		allObjects[i,8])
	}
	draw_sprite(spr_suntexture, 1, room_width*0.5, room_height*0.5);
	draw_sprite_ext(spr_sunGlow3, 1, room_width*0.5, room_height*0.5, 0.3, 0.3, 0, c_white, 0.8);
	draw_sprite_ext(spr_sunGlow3, 1, room_width*0.5, room_height*0.5, 1, 1, 0, c_white, 0.5);
	draw_sprite_ext(spr_orangeGlowBig, 1, room_width*0.5, room_height*0.5, 2, 2, 0, c_white, 0.8);
	////draw screenshot
	//draw_set_alpha(1);
	//draw_set_font(fnt_menu);
	//draw_set_color(c_white);
    //draw_sprite_ext(screenShot,0,0,0,1,1,0,c_white,1);
	//draw_sprite(spr_sun, 1, room_width*0.5, room_height*0.5);
	//draw_sprite(spr_suntexture, 1, room_width*0.5, room_height*0.5);
	//draw_sprite_ext(spr_sunGlow3, 1, room_width*0.5, room_height*0.5, 0.3, 0.3, 0, c_white, 0.8);
	//draw_sprite_ext(spr_sunGlow3, 1, room_width*0.5, room_height*0.5, 1, 1, 0, c_white, 0.5);
	//draw_sprite_ext(spr_orangeGlowBig, 1, room_width*0.5, room_height*0.5, 2, 2, 0, c_white, 0.8);
	//dim screenshot
	draw_set_colour(c_black);
	draw_set_alpha(0.3);
    draw_rectangle(0, 0, room_width, room_height, 0);
	draw_set_alpha(1);
}
else
{
	if(sprite_exists(screenShot))
		{
			sprite_delete(screenShot);
		}
}


if (readySetGo == 1)
{
	draw_set_font(fnt_score);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_alpha(textAlpha);
	draw_text_transformed(room_width/2, room_height/3,"Ready", textScale, textScale, 0);
	textScale = min(textScale + 0.1, 1);
	textAlpha = min(textAlpha + 0.07, 1);
}

if (readySetGo == 2)
{
	draw_set_font(fnt_score);
	draw_set_colour(c_white);
	draw_set_alpha(textAlpha);
	draw_text_transformed(room_width/2, room_height/3,"Set", textScale, textScale, 0);
	textScale = min(textScale + 0.1, 1);
	textAlpha = min(textAlpha + 0.07, 1);
}

if (readySetGo == 3)
{
	if (textScale < 1.5)
	{
		draw_set_font(fnt_score);
		draw_set_colour(c_white);
		draw_set_alpha(textAlpha);
		draw_text_transformed(room_width/2, room_height/3,"Go!", textScale, textScale, 0);
		textScale = min(textScale + 0.15, 1.5);
		textAlpha = min(textAlpha + 0.07, 1);
	}
	else
	{
		var textAngle = 0 + random_range(-10, 10);
		draw_set_font(fnt_score);
		draw_set_colour(c_white);
		textAlpha = 1;
		draw_text_transformed(room_width/2, room_height/3,"Go!", textScale, textScale, textAngle);
	}
}

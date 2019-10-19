/// @description Insert description here
// You can write your code in this editor

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
	draw_set_alpha(1);
	scoreX = room_width - 80;
	scoreY = 50;
	draw_set_font(fnt_menu);
	draw_set_colour(c_white);
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_text(scoreX, scoreY, "SCORE " + string(score));
}
draw_set_alpha(1);


if (awardScore == true)
{
	draw_set_font(fnt_score);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width/2, room_height/2 - 100, "SCORE " + string(score));
	
	draw_set_font(fnt_score);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width/2, room_height/2 + 100, "BONUS " + string(global.roundBonus))
	
	draw_set_halign(fa_left);
	
	if (countMulti >= 10)
	{
		draw_set_color($BF00FF);
		draw_set_font(fnt_multi5);
	}
	if (countMulti < 10)
	{
		draw_set_color($FF07D5);
		draw_set_font(fnt_multi5);
	}
	if (countMulti < 9)
	{
		draw_set_color($FF1997);
		draw_set_font(fnt_multi5);
	}
	if (countMulti < 8)
	{
		draw_set_color($FF383E);
		draw_set_font(fnt_multi4);
	}
	if (countMulti < 6)
	{
		draw_set_color($FF864F);
		draw_set_font(fnt_multi3);
	}
	if (countMulti < 4)
	{
		draw_set_color($FFE068);
		draw_set_font(fnt_multi2);
	}
	if (countMulti > 1)
	{
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(room_width/2, room_height/2 + 180, " X " + string(countMulti));	
	}
}
else
{
	draw_set_font(fnt_menu);
	draw_set_colour(c_white);
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_text(room_width - 80, 100, "BONUS " + string(global.roundBonus));
}

draw_set_font(fnt_menu);
draw_set_colour(c_gray);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_text(room_width - 80, 150, "x " + string(global.multiplier));


/// @description Insert description here
// You can write your code in this editor


//draws screen capture and dims for pause screen
if (gamePaused == true)
{
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


//checks if winner of draw and displays message
if (gameOver == true) and (winner == 1)
{
	draw_set_alpha(1);
	draw_set_font(fnt_title);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width/2, room_height/3, "Player 1 Wins!");
	
}

if (gameOver == true) and (winner == 2)
{
	draw_set_alpha(1);
	draw_set_font(fnt_title);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width/2, room_height/3, "CPU Wins!");
	
}

if (gameOver == true) and (winner == 0)
{
	draw_set_alpha(1);
	draw_set_font(fnt_title);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width/2, room_height/3, "Draw!");
}

//displayed tallyed scores
if (gameOver == true)
{
	draw_set_alpha(1);
	draw_set_font(fnt_title);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed((room_width/2) - 400, room_height/2, global.scorePlayer1, 1, 1, 0);
	draw_text_transformed((room_width/2) + 400, room_height/2, global.scoreCpu, 1, 1, 0);
}

//draw missile and EMP ammo
if (instance_exists(obj_player1))
{
	for (var i = 0; i < obj_player1.missileAmmo; i++)
	{
		var misOffset = 15;
		draw_sprite_ext(spr_missile, 0, 30 + (misOffset * i), 60, 1, 1, 90, c_white, 1);
	}
	for (var i = 0; i < obj_player1.empAmmo; i++)
	{
		var misOffset = 20;
		draw_sprite_ext(spr_empGlobeBig, 0, 30 + (misOffset * i), 60, 0.03, 0.03, 0, c_white, 1);
	}
}	

if (instance_exists(obj_player1))
{
	draw_sprite(spr_armour,0, 30, 30);
	draw_set_font(fnt_stats);
	draw_text(50, 30, string(obj_player1.hp));
}

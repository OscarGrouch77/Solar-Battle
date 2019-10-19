/// @description Insert description here
// You can write your code in this editor


//draws screen capture and dims for pause screen
if (gamePaused = true)
{
	//draw screenshot
	draw_set_alpha(1);
	draw_set_font(fnt_menu);
	draw_set_color(c_white);
    draw_sprite_ext(screenShot,0,0,0,1,1,0,c_white,1);
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


//checks if winner or draw and displays message
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
	draw_text(room_width/2, room_height/3, "Player 2 Wins!");
	
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
	draw_text_transformed((room_width/2) + 400, room_height/2, global.scorePlayer2, 1, 1, 0);
}

//drawing missile ammo counters
if (instance_exists(obj_player1))
{
	for (var i = 0; i < obj_player1.missileAmmo; i++)
	{
		var misOffset = 15;
		draw_sprite_ext(spr_missile, 0, 30 + (misOffset * i), 30, 1, 1, 90, c_white, 1);
	}
}	

if (instance_exists(obj_player2))
{
	for (var i = 0; i < obj_player2.missileAmmo; i++)
	{
		var misOffset = 15;
		draw_sprite_ext(spr_missile, 0, room_width - 30 - (misOffset * i), 30, 1, 1, 90, c_white, 1);
	}
}	
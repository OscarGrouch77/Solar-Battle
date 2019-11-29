/// @description Insert description here
// You can write your code in this editor

if (gameOver == true) and (showHighScore == false)
{
	draw_set_font(fnt_title);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	isPlural = "rounds";
	if (survivedRounds = 1) isPlural = "round";
	draw_text(room_width/2, room_height/3, "You Survived " + string(survivedRounds) + " " + string(isPlural));
	draw_set_font(fnt_scoreBig);
	draw_text(room_width/2, room_height/2 + 200, "Score : " + string(score));
}
if (showHighScore == false)
{
	draw_set_font(fnt_menu);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width/2, 50, "ROUND " + string(global.roundNumber));
}


//show High score table aftre player has entered name
if (showHighScore == true)
{
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1);
	draw_set_font(fnt_menu);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width/2, 100, "HIGH SCORES");
	draw_set_color(c_white);
	draw_highscore(room_width/2 - 200, 200, room_width/2 + 200, room_height/2 + 200);
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

//draw armour indicator
if (instance_exists(obj_player1))
{
	draw_sprite(spr_armour,0, 30, 30);
	draw_set_font(fnt_stats);
	draw_text(50, 30, string(obj_player1.hp));
}
/// @description Insert description here
// You can write your code in this editor


//always displays score

if(addBonus == true) and (awardScore == true){
	draw_set_alpha(pulse);
}else{
	draw_set_alpha(1);
}
scoreX = room_width - 80;
scoreY = 50;
draw_set_font(fnt_menu);
draw_set_colour(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_text(scoreX, scoreY, "SCORE " + string(score));

//displaying bonus as the bonus is awarded
if (awardScore == true)
{
	if(addBonus == false){
		draw_set_alpha(pulse);  //pulses bonus
	}else{
		draw_set_alpha(1);
	}
	
	draw_set_font(fnt_menu);
	draw_set_colour(c_white);
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_text(room_width - 80, 100, "BONUS " + string(global.roundBonus));
	
	draw_set_halign(fa_left);
	
	//changing look of multiplier depending of size of multiplier and draw to screen
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
	if (countMulti > 0) and (addBonus == false)
	{
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(room_width - 80, 150, " X " + string(countMulti));
	}
	
	/*
	//hold fire to skip message
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_menu);
	draw_set_color(c_ltgray);
	draw_text(room_width*0.5, room_height*0.8, "HOLD FIRE TO SKIP");
	*/
}
else
{
	draw_set_alpha(1);
	draw_set_font(fnt_menu);
	draw_set_colour(c_white);
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_text(room_width - 80, 100, "BONUS " + string(global.roundBonus));
	
	//display current multiplier in top right
	draw_set_font(fnt_menu);
	draw_set_colour(c_gray);
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_text(room_width - 80, 150, "x " + string(global.multiplier));
}

/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);

if(paused)
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
	if (confirm == false)
	{
		//draw menu box
		draw_set_alpha(0.9);
	    draw_rectangle(boxLeft, boxBot, boxRight, boxTop, 0);
		draw_set_colour(c_white);
		draw_rectangle(boxLeft, boxBot, boxRight, boxTop, 1);
		//draw contents of menu box
		draw_set_valign(fa_top);
		draw_set_font(fnt_menu);
		draw_set_color(c_white);
		draw_text(room_width * 0.5, boxTop + Vspacing * 0.5, "PAUSED");
		//draw menu buttons
		draw_set_font(fnt_powerUp);
		if (point_in_rectangle(mouse_x, mouse_y, room_width * 0.5 - string_width("QUIT TO MENU") * 0.5, boxTop + Vspacing * 3, room_width * 0.5 + string_width("QUIT TO MENU") * 0.5, boxTop + Vspacing * 3 + string_height("QUIT TO MENU")))
			{
				draw_set_color(c_white);
			}
		else draw_set_color(c_gray);
		draw_text(room_width * 0.5, boxTop + Vspacing * 3, "QUIT TO MENU");
	
		draw_set_font(fnt_powerUp);
		if (point_in_rectangle(mouse_x, mouse_y, room_width * 0.5 - string_width("QUIT TO DESKTOP") * 0.5, boxTop + Vspacing * 4, room_width * 0.5 + string_width("QUIT TO DESKTOP") * 0.5, boxTop + Vspacing * 4 + string_height("QUIT TO DESKTOP")))
			{
				draw_set_color(c_white);
			}
		else draw_set_color(c_gray);
		draw_text(room_width * 0.5, boxTop + Vspacing * 4, "QUIT TO DESKTOP");
		
		draw_set_font(fnt_powerUp);
		if (point_in_rectangle(mouse_x, mouse_y, room_width * 0.5 - string_width("RESUME") * 0.5, boxTop + Vspacing * 5, room_width * 0.5 + string_width("RESUME") * 0.5, boxTop + Vspacing * 5 + string_height("RESUME")))
			{
				draw_set_color(c_white);
			}
		else draw_set_color(c_gray);
		draw_text(room_width * 0.5, boxTop + Vspacing * 5, "RESUME");
	}
	else quitDT = scr_drawConfirm("QUIT TO DESKTOP : ARE YOU SURE?");
}

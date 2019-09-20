/// @description Insert description here
// You can write your code in this editor


//draws message and text box
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_menu);
draw_set_alpha(textAlpha);
draw_text(x, y, "You achieved a high score! Please enter your name :")
//draw_rectangle(x, y, x + 100, y + 20, true);

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_alpha(1);
draw_text(x,y + 60,global.name);

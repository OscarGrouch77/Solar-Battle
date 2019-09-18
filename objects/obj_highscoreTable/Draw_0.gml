/// @description Insert description here
// You can write your code in this editor


draw_set_alpha(1);
draw_set_font(fnt_menu);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, 100, "HIGH SCORES");
draw_set_color(c_white);
draw_highscore(room_width/2 - 200, 200, room_width/2 + 200, room_height/2 + 200);

draw_text(10, 10, "HeLLo World");
/// @description Insert description here
// You can write your code in this editor


draw_set_halign(fa_left);
draw_set_valign(fa_top);



///player 1 controls
draw_set_color(c_white);
draw_set_font(font);
draw_text(p1LeftMargin , topMargin, "CONTROLS - PLAYER ONE");

draw_set_colour(c_white);
draw_set_font(font);
draw_text(p1LeftMargin , topMargin + 2*lineSpacing, "ROTATE LEFT");
draw_set_font(fnt_easyRead);
var str = string(scr_returnChr(global.p1Left))
colour = (point_in_rectangle(mouse_x, mouse_y, p1KeyMargin, topMargin + 2*lineSpacing, p1KeyMargin + string_width(str), topMargin + 2*lineSpacing + string_height(str)) ? $D5FAFF : $1494FA);
draw_set_color(colour);
draw_text(p1KeyMargin, topMargin + 2*lineSpacing, str);

draw_set_colour(c_white);
draw_set_font(font);
draw_text(p1LeftMargin , topMargin + 3*lineSpacing, "ROTATE RIGHT");
draw_set_font(fnt_easyRead);
var str = string(scr_returnChr(global.p1Right))
colour = (point_in_rectangle(mouse_x, mouse_y, p1KeyMargin, topMargin + 3*lineSpacing, p1KeyMargin + string_width(str), topMargin + 3*lineSpacing + string_height(str)) ? $D5FAFF : $1494FA);
draw_set_color(colour);
draw_text(p1KeyMargin, topMargin + 3*lineSpacing, string(scr_returnChr(global.p1Right)));

draw_set_colour(c_white);
draw_set_font(font);
draw_text(p1LeftMargin , topMargin + 4*lineSpacing, "THRUST");
draw_set_font(fnt_easyRead);
var str = string(scr_returnChr(global.p1Thrust))
colour = (point_in_rectangle(mouse_x, mouse_y, p1KeyMargin, topMargin + 4*lineSpacing, p1KeyMargin + string_width(str), topMargin + 4*lineSpacing + string_height(str)) ? $D5FAFF : $1494FA);
draw_set_color(colour);
draw_text(p1KeyMargin, topMargin + 4*lineSpacing, string(scr_returnChr(global.p1Thrust)));

draw_set_colour(c_white);
draw_set_font(font);
draw_text(p1LeftMargin , topMargin + 5*lineSpacing, "REVERSE");
draw_set_font(fnt_easyRead);
var str = string(scr_returnChr(global.p1Reverse))
colour = (point_in_rectangle(mouse_x, mouse_y, p1KeyMargin, topMargin + 5*lineSpacing, p1KeyMargin + string_width(str), topMargin + 5*lineSpacing + string_height(str)) ? $D5FAFF : $1494FA);
draw_set_color(colour);
draw_text(p1KeyMargin, topMargin + 5*lineSpacing, string(scr_returnChr(global.p1Reverse)));

draw_set_colour(c_white);
draw_set_font(font);
draw_text(p1LeftMargin , topMargin + 6*lineSpacing, "FIRE");
draw_set_font(fnt_easyRead);
var str = string(scr_returnChr(global.p1Fire))
colour = (point_in_rectangle(mouse_x, mouse_y, p1KeyMargin, topMargin + 6*lineSpacing, p1KeyMargin + string_width(str), topMargin + 6*lineSpacing + string_height(str)) ? $D5FAFF : $1494FA);
draw_set_color(colour);
draw_text(p1KeyMargin, topMargin + 6*lineSpacing, string(scr_returnChr(global.p1Fire)));

draw_set_colour(c_white);
draw_set_font(font);
draw_text(p1LeftMargin , topMargin + 7*lineSpacing, "FIRE MISSILE");
draw_set_font(fnt_easyRead);
var str = string(scr_returnChr(global.p1AltFire))
colour = (point_in_rectangle(mouse_x, mouse_y, p1KeyMargin, topMargin + 7*lineSpacing, p1KeyMargin + string_width(str), topMargin + 7*lineSpacing + string_height(str)) ? $D5FAFF : $1494FA);
draw_set_color(colour);
draw_text(p1KeyMargin, topMargin + 7*lineSpacing, string(scr_returnChr(global.p1AltFire)));



///player 2 controls
draw_set_color(c_white);
draw_set_font(font);
draw_text(p2LeftMargin , topMargin, "CONTROLS - PLAYER TWO");

draw_set_colour(c_white);
draw_set_font(font);
draw_text(p2LeftMargin , topMargin + 2*lineSpacing, "ROTATE LEFT");
draw_set_font(fnt_easyRead);
var str = string(scr_returnChr(global.p2Left))
colour = (point_in_rectangle(mouse_x, mouse_y, p2KeyMargin, topMargin + 2*lineSpacing, p2KeyMargin + string_width(str), topMargin + 2*lineSpacing + string_height(str)) ? $D5FAFF : $1494FA);
draw_set_color(colour);
draw_text(p2KeyMargin, topMargin + 2*lineSpacing, str);

draw_set_colour(c_white);
draw_set_font(font);
draw_text(p2LeftMargin , topMargin + 3*lineSpacing, "ROTATE RIGHT");
draw_set_font(fnt_easyRead);
var str = string(scr_returnChr(global.p2Right))
colour = (point_in_rectangle(mouse_x, mouse_y, p2KeyMargin, topMargin + 3*lineSpacing, p2KeyMargin + string_width(str), topMargin + 3*lineSpacing + string_height(str)) ? $D5FAFF : $1494FA);
draw_set_color(colour);
draw_text(p2KeyMargin, topMargin + 3*lineSpacing, string(scr_returnChr(global.p2Right)));

draw_set_colour(c_white);
draw_set_font(font);
draw_text(p2LeftMargin , topMargin + 4*lineSpacing, "THRUST");
draw_set_font(fnt_easyRead);
var str = string(scr_returnChr(global.p2Thrust))
colour = (point_in_rectangle(mouse_x, mouse_y, p2KeyMargin, topMargin + 4*lineSpacing, p2KeyMargin + string_width(str), topMargin + 4*lineSpacing + string_height(str)) ? $D5FAFF : $1494FA);
draw_set_color(colour);
draw_text(p2KeyMargin, topMargin + 4*lineSpacing, string(scr_returnChr(global.p2Thrust)));

draw_set_colour(c_white);
draw_set_font(font);
draw_text(p2LeftMargin , topMargin + 5*lineSpacing, "REVERSE");
draw_set_font(fnt_easyRead);
var str = string(scr_returnChr(global.p2Reverse))
colour = (point_in_rectangle(mouse_x, mouse_y, p2KeyMargin, topMargin + 5*lineSpacing, p2KeyMargin + string_width(str), topMargin + 5*lineSpacing + string_height(str)) ? $D5FAFF : $1494FA);
draw_set_color(colour);
draw_text(p2KeyMargin, topMargin + 5*lineSpacing, string(scr_returnChr(global.p2Reverse)));

draw_set_colour(c_white);
draw_set_font(font);
draw_text(p2LeftMargin , topMargin + 6*lineSpacing, "FIRE");
draw_set_font(fnt_easyRead);
var str = string(scr_returnChr(global.p2Fire))
colour = (point_in_rectangle(mouse_x, mouse_y, p2KeyMargin, topMargin + 6*lineSpacing, p2KeyMargin + string_width(str), topMargin + 6*lineSpacing + string_height(str)) ? $D5FAFF : $1494FA);
draw_set_color(colour);
draw_text(p2KeyMargin, topMargin + 6*lineSpacing, string(scr_returnChr(global.p2Fire)));

draw_set_colour(c_white);
draw_set_font(font);
draw_text(p2LeftMargin , topMargin + 7*lineSpacing, "FIRE MISSILE");
draw_set_font(fnt_easyRead);
var str = string(scr_returnChr(global.p2AltFire))
colour = (point_in_rectangle(mouse_x, mouse_y, p2KeyMargin, topMargin + 7*lineSpacing, p2KeyMargin + string_width(str), topMargin + 7*lineSpacing + string_height(str)) ? $D5FAFF : $1494FA);
draw_set_color(colour);
draw_text(p2KeyMargin, topMargin + 7*lineSpacing, string(scr_returnChr(global.p2AltFire)));
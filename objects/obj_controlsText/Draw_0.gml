/// @description Insert description here
// You can write your code in this editor


draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_set_font(fnt_menu);
draw_set_color($1494FA);

draw_text(room_width/3 - 100 , room_height - 250, "CONTROLS - PLAYER ONE")

draw_set_font(fnt_easyRead);
draw_text(room_width/3 - 100 , room_height - 20, "ROTATE : 'A' and 'D' \nFIRE : 'SPACE' \nSECONDARY FIRE : 'M' \nTHRUST FORWARD : 'W' \nTHRUST BACK : 'S'")

draw_set_font(fnt_menu);
draw_text(room_width/3 + 500, room_height - 250, "CONTROLS - PLAYER TWO")

draw_set_font(fnt_easyRead);
draw_text(room_width/3 + 500, room_height - 20, "ROTATE : 'LEFT' and 'RIGHT' \nFIRE : 'ENTER' \nSECONDARY FIRE : '+' \nTHRUST FORWARD : 'UP' \nTHRUST BACK : 'DOWN'")
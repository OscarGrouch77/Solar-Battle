/// @description Insert description here
// You can write your code in this editor



//draw box around sprite (remembering that sprite will be rotated 90 degs)
var sprBoxOffsetTop = -sprite_yoffset;
var sprBoxOffsetBot = sprite_height - sprite_yoffset;
var sprBoxOffsetLeft = -sprite_xoffset;
var sprBoxOffsetRight = sprite_height - sprite_xoffset;


draw_set_alpha(0.7 * alpha);
draw_set_color(c_black);
draw_rectangle(x + leftBorderOffset, y + topBorderOffset, x + rightBorderOffset, y + bottomBorderOffset, 0);
draw_set_color(c_white);
draw_rectangle(x + leftBorderOffset, y + topBorderOffset, x + rightBorderOffset, y + bottomBorderOffset, 1);


draw_set_color(c_black);
draw_rectangle(x + sprBoxOffsetLeft, y + sprBoxOffsetTop, x + sprBoxOffsetRight, y + sprBoxOffsetBot, 0);
draw_set_color(c_white);
draw_rectangle(x + sprBoxOffsetLeft, y + sprBoxOffsetTop, x + sprBoxOffsetRight, y + sprBoxOffsetBot, 1);

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(fnt_powerUp);
draw_set_alpha(1 * alpha);

draw_text_ext_transformed(x + rightBorderOffset * 0.5 + (15 * scale), y, text, -1, (rightBorderOffset/scale) - (sprBoxOffsetRight/scale), scale, scale, 0);

draw_self();




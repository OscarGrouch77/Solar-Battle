/// @description Insert description here
// You can write your code in this editor


draw_set_font(fnt_powerUp);
colormix = merge_color(c_white, c_navy, colourShift);
draw_text_transformed_color(textx, texty, "SHIELD", textScalex, textScaley, 0, colormix, colormix, colormix, colormix, textAlpha);
texty -= 0.5;
textScalex += 0.02;
textScaley += 0.02;
textAlpha -= 0.02;
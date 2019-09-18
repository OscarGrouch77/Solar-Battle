/// @description Insert description here
// You can write your code in this editor


if (getReady = true)
{
	for (var i = 0; i < array_height_2d(allObjects); ++i)
	{
		draw_sprite_ext
		(
		allObjects[i, 0],
		allObjects[i, 1],
		allObjects[i, 2],
		allObjects[i, 3],
		allObjects[i, 4],
		allObjects[i, 5],
		allObjects[i, 6],
		allObjects[i, 7],
		allObjects[i, 8]
		);	
	}
	draw_set_font(fnt_score);
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1);
}


if (readySetGo == 1)
{
	draw_set_font(fnt_score);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_alpha(textAlpha);
	draw_text_transformed(room_width/2, room_height/3,"Ready", textScale, textScale, 0);
	textScale = min(textScale + 0.1, 1);
	textAlpha = min(textAlpha + 0.07, 1);
}

if (readySetGo == 2)
{
	draw_set_font(fnt_score);
	draw_set_colour(c_white);
	draw_set_alpha(textAlpha);
	draw_text_transformed(room_width/2, room_height/3,"Set", textScale, textScale, 0);
	textScale = min(textScale + 0.1, 1);
	textAlpha = min(textAlpha + 0.07, 1);
}

if (readySetGo == 3)
{
	if (textScale < 1.5)
	{
		draw_set_font(fnt_score);
		draw_set_colour(c_white);
		draw_set_alpha(textAlpha);
		draw_text_transformed(room_width/2, room_height/3,"Go!", textScale, textScale, 0);
		textScale = min(textScale + 0.15, 1.5);
		textAlpha = min(textAlpha + 0.07, 1);
	}
	else
	{
		var textAngle = 0 + random_range(-10, 10);
		draw_set_font(fnt_score);
		draw_set_colour(c_white);
		textAlpha = 1;
		draw_text_transformed(room_width/2, room_height/3,"Go!", textScale, textScale, textAngle);
	}
}

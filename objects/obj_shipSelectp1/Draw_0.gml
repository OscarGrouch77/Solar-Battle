/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_alpha(1);
draw_set_font(fnt_menu);
draw_set_color(c_white);


if (global.gameType == gameType.twoDuel)
{
	var text = "PLAYER ONE : SELECT SHIP";
}
else var text = "SELECT SHIP";
draw_text(Vcentre, 160, text);
draw_set_alpha(0.8);
if (selectButton.select = false)
{
	draw_set_color(c_black);
}
else
{
	draw_set_colour(c_green);
}
draw_rectangle(Vcentre - 200, 200, Vcentre + 200, 600, 0);
draw_set_alpha(1);
draw_set_color(c_white);
draw_rectangle(Vcentre - 200, 200, Vcentre + 200, 600, 1);
draw_sprite_ext(ship[choice,1], 0, Vcentre, 400 + ship[choice,0] *6, 6, 6, 90, c_white, 1);


if (point_in_triangle(mouse_x, mouse_y, Vcentre - 250, 400, Vcentre - 220, 350, Vcentre - 220, 450)or (keyboard_check(global.p1Left)))
{
	draw_set_color(c_white);
}
else draw_set_colour(c_gray);
draw_triangle(Vcentre - 250, 400, Vcentre - 220, 350, Vcentre - 220, 450, 0);

if (point_in_triangle(mouse_x, mouse_y, Vcentre + 250, 400, Vcentre + 220, 350, Vcentre + 220, 450) or (keyboard_check(global.p1Right)))
{
	draw_set_color(c_white);
}
else draw_set_colour(c_gray);
draw_triangle(Vcentre + 250, 400, Vcentre + 220, 350, Vcentre + 220, 450, 0);
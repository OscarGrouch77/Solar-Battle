
//@argument text string 
var text = argument0;
var Hspacing = 35;
var Vspacing = string_height(text)/2;

var boxLeft = room_width/2 - string_width(text)/2 - Hspacing;
var boxRight = room_width/2 + string_width(text)/2 + Hspacing;
var boxTop = room_height/2 - string_height(text)/2 - Vspacing;
var boxBot = room_height/2 + string_height(text)/2 + Vspacing + string_height(text)*2;


//draw black rectangle for background
draw_set_alpha(0.9);
draw_set_color(c_black);
draw_rectangle(boxLeft, boxTop, boxRight, boxBot, false);

//draw white outline
draw_set_color(c_white)
draw_rectangle(boxLeft, boxTop, boxRight, boxBot, true)

//draw text from argument
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(room_width/2, room_height/2 - Vspacing, text);

//draw yes and no buttons
draw_set_alpha(0.9);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

if (point_in_rectangle(mouse_x, mouse_y, boxLeft + ((boxRight - boxLeft)/3) - string_width("YES")/2, boxBot - Vspacing - string_height("YES"), boxLeft + ((boxRight - boxLeft)/3) + string_width("YES")/2, boxBot - Vspacing))
{
	draw_set_color(c_white);
}
else draw_set_color(c_gray);
draw_text(boxLeft + ((boxRight - boxLeft)/3), boxBot - Vspacing, "YES");

if (point_in_rectangle(mouse_x, mouse_y, boxRight - ((boxRight - boxLeft)/3) - string_width("NO")/2, boxBot - Vspacing - string_height("NO"), boxRight - ((boxRight - boxLeft)/3) + string_width("NO")/2, boxBot - Vspacing))
{
	draw_set_color(c_white);
}
else draw_set_color(c_gray);
draw_text(boxRight - ((boxRight - boxLeft)/3), boxBot - Vspacing, "NO");

if (point_in_rectangle(mouse_x, mouse_y, boxLeft + ((boxRight - boxLeft)/3) - string_width("YES")/2, boxBot - Vspacing - string_height("YES"), boxLeft + ((boxRight - boxLeft)/3) + string_width("YES")/2, boxBot - Vspacing))
{
	if (mouse_check_button_pressed(mb_left))
	{
		confirm = false;
		return true;
	}
}
		
if (point_in_rectangle(mouse_x, mouse_y, boxRight - ((boxRight - boxLeft)/3) - string_width("NO")/2, boxBot - Vspacing - string_height("NO"), boxRight - ((boxRight - boxLeft)/3) + string_width("NO")/2, boxBot - Vspacing))
{
	if (mouse_check_button_pressed(mb_left))
	{
		confirm = false;
		return false;
	}
}
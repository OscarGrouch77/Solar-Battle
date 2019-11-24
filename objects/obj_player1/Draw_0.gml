/// @description Insert description here
// You can write your code in this editor

scr_drawShadow(x,y);
//draw shot charge meter
if(charging == true)
{
	draw_set_alpha(1);
	var col = c_red;
	if (chargeShot >= 30) col = c_green;
	draw_line_width_color(x, y + 25, x, y + 28, chargeShot, col, col);
}
draw_self();

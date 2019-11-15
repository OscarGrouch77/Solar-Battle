/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_alpha(1);
draw_set_font(fnt_menu);
draw_set_color(c_white);

draw_text(Vcentre, Vtop, "PLAYER TWO : SELECT SHIP");

//draw rectangle with ship sprite displayed
draw_set_alpha(0.8);
if (selectButton.select = false)
{
	draw_set_color(c_black);
}
else
{
	draw_set_colour(c_lime);
}
draw_rectangle(Vcentre - 200, Vtop + 30, Vcentre + 200, Vtop + 430, 0);
draw_set_alpha(1);
draw_set_color(c_white);
draw_rectangle(Vcentre - 200, Vtop + 30, Vcentre + 200, Vtop + 430, 1);
draw_sprite_ext(ship[choice,1], 0, Vcentre, Vtop + 230 + ship[choice,0] *6, 6, 6, 90, c_white, 1);

//draw change selection triangles
if (point_in_triangle(mouse_x, mouse_y, Vcentre - 250, Vtop + 230, Vcentre - 220, Vtop + 180, Vcentre - 220, Vtop + 280)or (keyboard_check(global.p1Left)))
{
	draw_set_color(c_white);
}
else draw_set_colour(c_gray);
draw_triangle(Vcentre - 250, Vtop + 230, Vcentre - 220, Vtop + 180, Vcentre - 220, Vtop + 280, 0);

if (point_in_triangle(mouse_x, mouse_y, Vcentre + 250, Vtop + 230, Vcentre + 220, Vtop + 180, Vcentre + 220, Vtop + 280) or (keyboard_check(global.p1Right)))
{
	draw_set_color(c_white);
}
else draw_set_colour(c_gray);
draw_triangle(Vcentre + 250, Vtop + 230, Vcentre + 220, Vtop + 180, Vcentre + 220, Vtop + 280, 0);

//ship stats display


//draw ship name
draw_set_color(c_white);
draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(Vcentre, Vtop + 470, global.shipStats[choice,0]);

//draw stat headings
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_font(fnt_stats);
var lineSpace = string_height("M") + 4;
var topY = Vtop + 520;

draw_text(Vcentre - 250, topY, "THRUST");
draw_text(Vcentre - 250, topY + lineSpace, "FIRE RATE");
draw_text(Vcentre - 250, topY + 2*lineSpace, "RANGE");
draw_text(Vcentre - 250, topY + 3*lineSpace, "ACCURACY");
draw_text(Vcentre - 250, topY + 4*lineSpace, "AGILITY");

//THRUST stat display

var targetLength = 400 * (global.shipStats[choice,2]/10);

var deltaL = (targetLength - thrustLength)*0.2;
thrustLength = thrustLength + deltaL;

var colourShift = thrustLength/400;
var colour = merge_color(c_olive, c_lime, colourShift);
draw_set_colour(colour);
draw_rectangle(Vcentre - 200, topY, (Vcentre - 200) + (thrustLength), topY + 20, 0);

draw_set_color(c_white);
draw_rectangle(Vcentre - 200, topY, Vcentre + 200, topY + 20, 1);
draw_line(Vcentre - 100, topY, Vcentre - 100, topY + 20);
draw_line(Vcentre, topY, Vcentre, topY + 20);
draw_line(Vcentre + 100, topY, Vcentre + 100, topY + 20);


//FIRE RATE stat display

var targetLength = 400 * (global.shipStats[choice,3]/10);

var deltaL = (targetLength - rateLength)*0.2;
rateLength = rateLength + deltaL;
var colourShift = rateLength/400;
var colour = merge_color(c_olive, c_lime, colourShift);
draw_set_colour(colour);
draw_rectangle(Vcentre - 200, topY + lineSpace, (Vcentre - 200) + (rateLength), topY + lineSpace + 20, 0);

draw_set_color(c_white);
draw_rectangle(Vcentre - 200, topY + lineSpace, Vcentre + 200, topY + lineSpace + 20, 1);
draw_line(Vcentre - 100, topY + lineSpace, Vcentre - 100, topY + lineSpace + 20);
draw_line(Vcentre, topY + lineSpace, Vcentre, topY + lineSpace + 20);
draw_line(Vcentre + 100, topY + lineSpace, Vcentre + 100, topY + lineSpace + 20);

//RANGE stat display

var targetLength = 400 * (global.shipStats[choice,4]/10);

var deltaL = (targetLength - rangeLength)*0.2;
rangeLength = rangeLength + deltaL;
var colourShift = rangeLength/400;
var colour = merge_color(c_olive, c_lime, colourShift);
draw_set_colour(colour);
draw_rectangle(Vcentre - 200, topY + 2*lineSpace, (Vcentre - 200) + (rangeLength), topY + 2*lineSpace + 20, 0);

draw_set_color(c_white);
draw_rectangle(Vcentre - 200, topY + 2*lineSpace, Vcentre + 200, topY + 2*lineSpace + 20, 1);
draw_line(Vcentre - 100, topY + 2*lineSpace, Vcentre - 100, topY + 2*lineSpace + 20);
draw_line(Vcentre, topY + 2*lineSpace, Vcentre, topY + 2*lineSpace + 20);
draw_line(Vcentre + 100, topY + 2*lineSpace, Vcentre + 100, topY + 2*lineSpace + 20);

//ACCURACY stat display

var targetLength = 400 * (global.shipStats[choice,5]/10);

var deltaL = (targetLength - accuracyLength)*0.2;
accuracyLength = accuracyLength + deltaL;
var colourShift = accuracyLength/400;
var colour = merge_color(c_olive, c_lime, colourShift);
draw_set_colour(colour);
draw_rectangle(Vcentre - 200, topY + 3*lineSpace, (Vcentre - 200) + (accuracyLength), topY + 3*lineSpace + 20, 0);

draw_set_color(c_white);
draw_rectangle(Vcentre - 200, topY + 3*lineSpace, Vcentre + 200, topY + 3*lineSpace + 20, 1);
draw_line(Vcentre - 100, topY + 3*lineSpace, Vcentre - 100, topY + 3*lineSpace + 20);
draw_line(Vcentre, topY + 3*lineSpace, Vcentre, topY + 3*lineSpace + 20);
draw_line(Vcentre + 100, topY + 3*lineSpace, Vcentre + 100, topY + 3*lineSpace + 20);

//AGILITY stat display

var targetLength = 400 * (global.shipStats[choice,6]/10);

var deltaL = (targetLength - agilityLength)*0.2;
agilityLength = agilityLength + deltaL;
var colourShift = agilityLength/400;
var colour = merge_color(c_olive, c_lime, colourShift);
draw_set_colour(colour);
draw_rectangle(Vcentre - 200, topY + 4*lineSpace, (Vcentre - 200) + (agilityLength), topY + 4*lineSpace + 20, 0);

draw_set_color(c_white);
draw_rectangle(Vcentre - 200, topY + 4*lineSpace, Vcentre + 200, topY + 4*lineSpace + 20, 1);
draw_line(Vcentre - 100, topY + 4*lineSpace, Vcentre - 100, topY + 4*lineSpace + 20);
draw_line(Vcentre, topY + 4*lineSpace, Vcentre, topY + 4*lineSpace + 20);
draw_line(Vcentre + 100, topY + 4*lineSpace, Vcentre + 100, topY + 4*lineSpace + 20);

//draw description text for ship
draw_set_halign(fa_left);
draw_set_font(fnt_easyRead1);
draw_set_color(c_ltgray);
draw_text_ext(Vcentre - 300, topY + 6* lineSpace, global.shipStats[choice,8], string_height("M"), 600);
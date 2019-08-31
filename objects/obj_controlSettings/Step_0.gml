/// @description Insert description here
// You can write your code in this editor


///redefine p1 keys
draw_set_font(fnt_easyRead); //to get clickable area right
///change left
if (point_in_rectangle(mouse_x, mouse_y, p1KeyMargin, topMargin + 2*lineSpacing, p1KeyMargin + string_width(string(scr_returnChr(global.p1Left))), topMargin + 2*lineSpacing + string_height(string(scr_returnChr(global.p1Left))))) and (waitInput == false)
{
	if(mouse_check_button_pressed(mb_left))
	{
		p1LeftSet = true;
		waitInput = true;
	}
}
if (waitInput = true) && (p1LeftSet = true)
{
	timer++;
	if (timer >= 60) timer = 0;
	global.p1Left = keyboard_key;
	if (keyboard_key) 
	{
		waitInput = false;
		p1LeftSet = false;
	}
}

///change right
if (point_in_rectangle(mouse_x, mouse_y, p1KeyMargin, topMargin + 3*lineSpacing, p1KeyMargin + string_width(string(scr_returnChr(global.p1Right))), topMargin + 3*lineSpacing + string_height(string(scr_returnChr(global.p1Right))))) and (waitInput == false)
{
	if(mouse_check_button_pressed(mb_left))
	{
		p1RightSet = true;
		waitInput = true;
	}
}
if (waitInput = true) && (p1RightSet = true)
{
	timer++;
	if (timer >= 60) timer = 0;
	global.p1Right = keyboard_key;
	if (keyboard_key) 
	{
		waitInput = false;
		p1RightSet = false;
	}
}

///change thrust
if (point_in_rectangle(mouse_x, mouse_y, p1KeyMargin, topMargin + 4*lineSpacing, p1KeyMargin + string_width(string(scr_returnChr(global.p1Thrust))), topMargin + 4*lineSpacing + string_height(string(scr_returnChr(global.p1Thrust))))) and (waitInput == false)
{
	if(mouse_check_button_pressed(mb_left))
	{
		p1ThrustSet = true;
		waitInput = true;
	}
}
if (waitInput = true) && (p1ThrustSet = true)
{
	timer++;
	if (timer >= 60) timer = 0;
	global.p1Thrust = keyboard_key;
	if (keyboard_key) 
	{
		waitInput = false;
		p1ThrustSet = false;
	}
}

///change Reverse
if (point_in_rectangle(mouse_x, mouse_y, p1KeyMargin, topMargin + 5*lineSpacing, p1KeyMargin + string_width(string(scr_returnChr(global.p1Reverse))), topMargin + 5*lineSpacing + string_height(string(scr_returnChr(global.p1Reverse))))) and (waitInput == false)
{
	if(mouse_check_button_pressed(mb_left))
	{
		p1ReverseSet = true;
		waitInput = true;
	}
}
if (waitInput = true) && (p1ReverseSet = true)
{
	timer++;
	if (timer >= 60) timer = 0;
	global.p1Reverse = keyboard_key;
	if (keyboard_key) 
	{
		waitInput = false;
		p1ReverseSet = false;
	}
}

///Change fire
if (point_in_rectangle(mouse_x, mouse_y, p1KeyMargin, topMargin + 6*lineSpacing, p1KeyMargin + string_width(string(scr_returnChr(global.p1Fire))), topMargin + 6*lineSpacing + string_height(string(scr_returnChr(global.p1Fire))))) and (waitInput == false)
{
	if(mouse_check_button_pressed(mb_left))
	{
		p1FireSet = true;
		waitInput = true;
	}
}
if (waitInput = true) && (p1FireSet = true)
{
	timer++;
	if (timer >= 60) timer = 0;
	global.p1Fire = keyboard_key;
	if (keyboard_key) 
	{
		waitInput = false;
		p1FireSet = false;
	}
}

///Change alt fire
if (point_in_rectangle(mouse_x, mouse_y, p1KeyMargin, topMargin + 7*lineSpacing, p1KeyMargin + string_width(string(scr_returnChr(global.p1AltFire))), topMargin + 7*lineSpacing + string_height(string(scr_returnChr(global.p1AltFire))))) and (waitInput == false)
{
	if(mouse_check_button_pressed(mb_left))
	{
		p1AltFireSet = true;
		waitInput = true;
	}
}
if (waitInput = true) && (p1AltFireSet = true)
{
	timer++;
	if (timer >= 60) timer = 0;
	global.p1AltFire = keyboard_key;
	if (keyboard_key) 
	{
		waitInput = false;
		p1AltFireSet = false;
	}
}

///redefine p2 keys
///change left
if (point_in_rectangle(mouse_x, mouse_y, p2KeyMargin, topMargin + 2*lineSpacing, p2KeyMargin + string_width(string(scr_returnChr(global.p2Left))), topMargin + 2*lineSpacing + string_height(string(scr_returnChr(global.p2Left))))) and (waitInput == false)
{
	if(mouse_check_button_pressed(mb_left))
	{
		p2LeftSet = true;
		waitInput = true;
	}
}
if (waitInput = true) && (p2LeftSet = true)
{
	global.p2Left = keyboard_key;
	if (keyboard_key) 
	{
		timer++;
		if (timer >= 60) timer = 0;
		waitInput = false;
		p2LeftSet = false;
	}
}

///change right
if (point_in_rectangle(mouse_x, mouse_y, p2KeyMargin, topMargin + 3*lineSpacing, p2KeyMargin + string_width(string(scr_returnChr(global.p2Right))), topMargin + 3*lineSpacing + string_height(string(scr_returnChr(global.p2Right))))) and (waitInput == false)
{
	if(mouse_check_button_pressed(mb_left))
	{
		p2RightSet = true;
		waitInput = true;
	}
}
if (waitInput = true) && (p2RightSet = true)
{
	timer++;
	if (timer >= 60) timer = 0;
	global.p2Right = keyboard_key;
	if (keyboard_key) 
	{
		waitInput = false;
		p2RightSet = false;
	}
}

///change thrust
if (point_in_rectangle(mouse_x, mouse_y, p2KeyMargin, topMargin + 4*lineSpacing, p2KeyMargin + string_width(string(scr_returnChr(global.p2Thrust))), topMargin + 4*lineSpacing + string_height(string(scr_returnChr(global.p2Thrust))))) and (waitInput == false)
{
	if(mouse_check_button_pressed(mb_left))
	{
		p2ThrustSet = true;
		waitInput = true;
	}
}
if (waitInput = true) && (p2ThrustSet = true)
{
	timer++;
	if (timer >= 60) timer = 0;
	global.p2Thrust = keyboard_key;
	if (keyboard_key) 
	{
		waitInput = false;
		p2ThrustSet = false;
	}
}

///change Reverse
if (point_in_rectangle(mouse_x, mouse_y, p2KeyMargin, topMargin + 5*lineSpacing, p2KeyMargin + string_width(string(scr_returnChr(global.p2Reverse))), topMargin + 5*lineSpacing + string_height(string(scr_returnChr(global.p2Reverse))))) and (waitInput == false)
{
	if(mouse_check_button_pressed(mb_left))
	{
		p2ReverseSet = true;
		waitInput = true;
	}
}
if (waitInput = true) && (p2ReverseSet = true)
{
	timer++;
	if (timer >= 60) timer = 0;
	global.p2Reverse = keyboard_key;
	if (keyboard_key) 
	{
		waitInput = false;
		p2ReverseSet = false;
	}
}

///Change fire
if (point_in_rectangle(mouse_x, mouse_y, p2KeyMargin, topMargin + 6*lineSpacing, p2KeyMargin + string_width(string(scr_returnChr(global.p2Fire))), topMargin + 6*lineSpacing + string_height(string(scr_returnChr(global.p2Fire))))) and (waitInput == false)
{
	if(mouse_check_button_pressed(mb_left))
	{
		p2FireSet = true;
		waitInput = true;
	}
}
if (waitInput = true) && (p2FireSet = true)
{
	timer++;
	if (timer >= 60) timer = 0;
	global.p2Fire = keyboard_key;
	if (keyboard_key) 
	{
		waitInput = false;
		p2FireSet = false;
	}
}

///Change alt fire
if (point_in_rectangle(mouse_x, mouse_y, p2KeyMargin, topMargin + 7*lineSpacing, p2KeyMargin + string_width(string(scr_returnChr(global.p2AltFire))), topMargin + 7*lineSpacing + string_height(string(scr_returnChr(global.p2AltFire))))) and (waitInput == false)
{
	if(mouse_check_button_pressed(mb_left))
	{
		p2AltFireSet = true;
		waitInput = true;
	}
}
if (waitInput = true) && (p2AltFireSet = true)
{
	timer++;
	if (timer >= 60) timer = 0;
	global.p2AltFire = keyboard_key;
	if (keyboard_key) 
	{
		waitInput = false;
		p2AltFireSet = false;
	}
}
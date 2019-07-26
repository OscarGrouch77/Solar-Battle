/// @description Insert description here
// You can write your code in this editor

//get text entered by player and stores as "Name"
if(keyboard_check(vk_anykey) and string_length(global.name) < 20)
{
	draw_set_font(fnt_easyRead);
    global.name = string(keyboard_string);
}
//if(keyboard_check_pressed(vk_backspace))
//{
//    global.name = string_delete(global.name,string_length(global.name),1);
//    keyboard_string = "";
//}
if(keyboard_check_pressed(vk_enter))
{
	highscore_add(global.name, score);
	global.name = "";
	obj_survivalSystem.showHighScore = true;
	instance_destroy();
}
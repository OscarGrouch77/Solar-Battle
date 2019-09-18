/// @description Insert description here
// You can write your code in this editor

//room_w = display_get_width()/room_width;
//room_h = display_get_height()/room_height;

room_width = display_get_width();
room_height = display_get_height();
surface_resize(application_surface, room_width, room_height);
window_set_size(room_width, room_height);

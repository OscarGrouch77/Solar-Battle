/// set variables


x = obj_sun.x - (room_width/4);
y = obj_sun.y;



player1Thrust1 = instance_create_layer(x + lengthdir_x(5, playerDir - 90) + lengthdir_x(16, playerDir - 180), y + lengthdir_y(16, playerDir - 180) + lengthdir_y(5, playerDir - 90), "Instances", obj_thruster);
player1Thrust2 = instance_create_layer(x + lengthdir_x(5, playerDir + 90) + lengthdir_x(16, playerDir - 180), y + lengthdir_y(16, playerDir - 180) - lengthdir_y(5, playerDir - 90), "Instances", obj_thruster);
with (player1Thrust1) image_index = 5;
with (player1Thrust2) image_index = 5;

//shadHP1[1] = 0;
//shadHP1[0] = 0;

//shadHP2[1] = 0;
//shadHP2[0] = 0;
/// @description Insert description here
// You can write your code in this editor

owner = obj_player1;
maxScale = 1;
scale = 0.05;
image_xscale = scale;
image_yscale = scale;
alpha = 0.1;
image_alpha = 0;
lifeTime = 60;
alarm[0] = lifeTime;
timer = 0;
fade = false;
audio_play_sound(snd_emp, 1, 0);

//create part sys for sparks
empPartSys = instance_create_layer(x, y, "topParticle", obj_partSysEmpSparks);
empSparkEm = part_emitter_create(empPartSys.empSparks);
//particle emitter stuff
EMPMaxRad = 512;
//leftEdgeX = x - (EMPMaxRad*scale*0.49);
//rightEdgeX = x + (EMPMaxRad*scale*0.49);
//topEdgeY = y - (EMPMaxRad*scale*0.49);
//bottomEdgeY = y + (EMPMaxRad*scale*0.49);



	
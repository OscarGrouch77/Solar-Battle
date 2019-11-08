/// @description Insert description here
// You can write your code in this editor

owner = obj_player1;
maxScale = 1;
scale = 0.05;
scale2 = 0.05;
scale3 = 0.05;
scale4 = 0.05;
scale5 = 0.05;
image_xscale = scale;
image_yscale = scale;
alpha = 0.1;
alpha2 = 0.1;
alpha3 = 0.1;
alpha4 = 0.1;
alpha5 = 0.1;
image_alpha = 0;
lifeTime = 120;
alarm[0] = lifeTime;
timer = 0;
fade = false;
audio_play_sound(snd_emp, 1, 0);

//create part sys for sparks
empPartSys = instance_create_layer(x, y, "topParticle", obj_partSysEmpSparks);
empSparkEm = part_emitter_create(empPartSys.empSparks);



	
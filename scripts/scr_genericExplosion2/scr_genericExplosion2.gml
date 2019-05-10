///scr_p2Explosion(x,y,partSysBot,partSysTop,partSysparticle1,partSysparticle2)

var xx = argument0;
var yy = argument1;
var partSysBot = argument2;
var partSysTop = argument3;
var partSysParticle1 = argument4;
var partSysParticle2 = argument5;


//part_particles_create(partSysBot, xx, yy, partSysParticle1, 5);
//part_particles_create(partSysTop, xx, yy, partSysParticle2, 3);
part_particles_create(partSysTop, xx + random_range(-8,8), yy + random_range(-8,8), partSysParticle2, 2);
part_particles_create(partSysTop, xx + random_range(-8,8), yy + random_range(-8,8), partSysParticle2, 2);
part_particles_create(partSysTop, xx + random_range(-8,8), yy + random_range(-8,8), partSysParticle2, 2);
//part_particles_create(partSysTop, xx, yy, partSysParticle2, 3);
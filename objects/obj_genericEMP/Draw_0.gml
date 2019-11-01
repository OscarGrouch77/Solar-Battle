/// @description Insert description here
// You can write your code in this editor


if (timer >= 5)
{
scale2 = min(scale2 + (3-scale2)*0.15, 3);

alpha2 = min(alpha2 + (2.5-scale2)*0.15, 0.85);
alpha2 = alpha2 + (random_range(-alpha2*0.1, alpha2*0.1));
draw_sprite_ext(spr_empGlobe2, 0, x, y, scale2, scale2, 0, c_white, alpha2);
}

if (timer >= 10)
{
scale3 = min(scale3 + (3-scale3)*0.15, 3);

alpha3 = min(alpha3 + (2.5-scale3)*0.15, 0.85);
alpha3 = alpha3 + (random_range(-alpha3*0.1, alpha3*0.1));
draw_sprite_ext(spr_empGlobe2, 0, x, y, scale3, scale3, 0, c_white, alpha3);
}

if (timer >= 10)
{
scale4 = min(scale4 + (3-scale4)*0.15, 3);

alpha4 = min(alpha4 + (2.5-scale4)*0.15, 0.85);
alpha4 = alpha4 + (random_range(-alpha4*0.1, alpha4*0.1));
draw_sprite_ext(spr_empGlobe2, 0, x, y, scale4, scale4, 0, c_white, alpha4);
}

if (timer >= 10)
{
scale5 = min(scale5 + (3-scale5)*0.15, 3);

alpha5 = min(alpha5 + (2.5-scale5)*0.15, 0.85);
alpha5 = alpha5 + (random_range(-alpha5*0.1, alpha5*0.1));
draw_sprite_ext(spr_empGlobe2, 0, x, y, scale5, scale5, 0, c_white, alpha5);
}
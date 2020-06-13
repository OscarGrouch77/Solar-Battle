//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float originX;
uniform float originY;
uniform float spawnProg;

//blue colour for spawn effect
vec3 col_blue = vec3(0.25, 0.42, 0.95);
//white colour for spawn effect
vec3 col_white = vec3(1.0, 1.0, 1.0);
//vec 2 of origin coords
vec2 originXY = vec2(originX, originY);

void main()
{
	vec4 base_col = texture2D( gm_BaseTexture, v_vTexcoord );
	vec2 XY = v_vTexcoord;
	
	float originDis = distance(XY, originXY); //distance of drawn pixel to sprite origin
	float effectProg = smoothstep(0.4, 1.2, spawnProg);
	if (originDis <= effectProg)
	{	
		base_col.rgb = mix(base_col.rgb, col_blue, 1.0 - (smoothstep(0.2, 0.5, (((1.5 *effectProg) - originDis) * 0.5))));  //blue blend
		base_col.rgb = mix(base_col.rgb, col_white, 1.0 - (smoothstep(0.15, 0.5, (((1.5 *effectProg) - originDis) * 0.5))));  //white blend
		base_col.a = mix(base_col.a, 0.0, 1.0 - (smoothstep(0.1, 0.15, (((1.5 *effectProg) - originDis) * 0.5)))); //alpha blend
	}
	else{
		base_col.a = 0.0;
	}
	

    gl_FragColor = base_col;
}

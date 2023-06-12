//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float seed;
uniform float intensity;
uniform float darkness;
float hash(vec2 p) { return fract(1e4 * sin(17.0 * p.x + p.y * 0.1 * seed) * (0.1 + abs(sin(p.y * 13.0 + p.x*seed)))); }

float rand(float n){return fract(sin(n) * 43758.5453123*seed);}

float noise(float p){
	float fl = floor(p);
  float fc = fract(p);
	return mix(rand(fl), rand(fl + 1.0), fc);
}

void main()
{
    gl_FragColor = vec4(vec3(0.0),darkness+intensity*noise(rand(hash(v_vTexcoord))));
}

// Passthrough Fragment Shader
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
/*
float random(vec2 co)
{
   return fract(sin(dot(co.xy,vec2(12.9898,78.233))) * 43758.5453);
} // source: https://github.com/mattdesl/glsl-random/blob/master/lowp.glsl
*/
void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );// * vec4( random( v_vTexcoord ), random( v_vTexcoord ), random( v_vTexcoord ), 1.0 );
}
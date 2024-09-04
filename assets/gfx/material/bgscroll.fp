#version 140

in vec2 var_texcoord0;
in vec2 var_texcoord1;
in vec2 var_texcoord2;

out vec4 color_out;

uniform sampler2D tex0;
uniform sampler2D tex1;

void main()
{
    vec4 bg = texture(tex0, var_texcoord1.xy);
    vec4 debris = texture(tex1, var_texcoord2.xy);
    
    color_out = vec4(bg.rgb + debris.rgb,1.0);
}
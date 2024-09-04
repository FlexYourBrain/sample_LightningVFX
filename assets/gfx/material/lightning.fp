#version 140

in vec2 var_texcoord0;
out vec4 color_out;

uniform sampler2D lightning;

void main()
{
    color_out = texture(lightning, var_texcoord0.xy);
}
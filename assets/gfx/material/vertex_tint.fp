#version 140

in vec2 var_texcoord0;
in vec4 var_tint;

out vec4 color_out;

uniform sampler2D texture_sampler;

void main()
{
    // Pre-multiply alpha since all runtime textures already are
    vec4 tint_pm = vec4(var_tint.xyz * var_tint.w, var_tint.w);
    color_out = texture(texture_sampler, var_texcoord0.xy) * tint_pm;
}
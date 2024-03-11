varying mediump vec2 var_texcoord0;
varying mediump vec4 var_tint;

uniform lowp sampler2D texture_sampler;

void main()
{
    // Pre-multiply alpha since all runtime textures already are
    lowp vec4 tint_pm = vec4(var_tint.xyz * var_tint.w, var_tint.w);
    gl_FragColor = texture2D(texture_sampler, var_texcoord0.xy) * tint_pm;
}

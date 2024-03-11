varying mediump vec2 var_texcoord0;
varying mediump vec2 var_texcoord1;
varying mediump vec2 var_texcoord2;

uniform lowp sampler2D tex0;
uniform lowp sampler2D tex1;

void main()
{
    vec4 bg = texture2D(tex0, var_texcoord1.xy);
    vec4 debris = texture2D(tex1, var_texcoord2.xy);
    
    gl_FragColor = vec4(bg.rgb + debris.rgb,1.0);
}
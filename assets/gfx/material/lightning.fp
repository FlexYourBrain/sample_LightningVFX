varying mediump vec2 var_texcoord0;

uniform lowp sampler2D lightning;

void main()
{
    gl_FragColor = texture2D(lightning, var_texcoord0.xy);
}
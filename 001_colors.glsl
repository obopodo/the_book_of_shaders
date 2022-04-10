#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

void main() {
	vec2 st = gl_FragCoord.xy/u_resolution;
	gl_FragColor = vec4(
        st.x + (1. - u_mouse.x / u_resolution.x),// (st.x + (sin(u_time)) + 1.) / 3.,
        st.y + (1. - u_mouse.y / u_resolution.y),// (st.y + (cos(u_time)) + 1.) / 3.,
        (abs(sin(u_time)) + 0.7) / 1.7,// u_mouse.y / u_resolution.y,
        1.0);

}

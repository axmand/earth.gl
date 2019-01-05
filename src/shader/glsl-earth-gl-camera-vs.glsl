#pragma glslify: targetpos = require('./chunk/glsl-earth-gl-targetpos.glsl')

uniform mat4 u_projectionMatrix;
uniform mat4 u_viewMatrix;
uniform mat4 u_modelMatrix;

//物体位置
attribute vec3 a_position;

varying vec4 v_color;

void main() { 
    v_color = targetpos(u_projectionMatrix, u_viewMatrix, u_modelMatrix, a_position);
    gl_Position = v_color;
}
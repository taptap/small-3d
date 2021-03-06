# version 430 core

layout(location = 0) in vec4 vertexPosition;
layout(location = 1) in vec3 vertexNormal;

out vec3 myNormal;
out vec4 myVertex;
out mat4 MVf;

uniform mat4 MV;
uniform mat4 P;

void main() {
    gl_Position = P * MV * vertexPosition;
    myNormal = vertexNormal;
    myVertex = vertexPosition;
    MVf = MV;
}

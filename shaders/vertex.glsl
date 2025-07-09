// shaders/vertex.glsl
#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTexCoord;

out vec2 TexCoord;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main() {
    gl_Position = projection * view * model * vec4(aPos, 1.0);
    TexCoord = aTexCoord;
}

//=============================================================================

// shaders/fragment.glsl
#version 330 core
out vec4 FragColor;

in vec2 TexCoord;

void main() {
    // Simple colored output for testing
    FragColor = vec4(0.8, 0.6, 0.4, 1.0); // Orange-brown color
}
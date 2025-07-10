# 🎮 Project Overview
This is a custom 3D voxel-based game engine and sandbox game, built to understand the fundamentals of:

3D graphics programming and OpenGL
Procedural world generation
Real-time physics simulation
Game engine architecture

# ✨ Planned Features
Core Gameplay

 3D first-person camera controls
 Basic OpenGL rendering pipeline
 Block placement and destruction
 Multiple block types (stone, dirt, grass, water)
 Infinite procedural world generation
 Inventory and crafting system

# Technical Features

 Chunk-based world loading (16x16x256 blocks)
 Perlin noise terrain generation
 Optimized mesh generation (greedy meshing)
 Frustum culling for performance
 Real water physics with sine wave simulation
 Dynamic lighting system
 Collision detection and physics
 Multi-threaded chunk generation

#🌊 Water Physics System
The water system will feature realistic fluid dynamics:

Sine wave displacement for surface animation
Flow simulation between blocks
Pressure-based physics for realistic water behavior
Buoyancy effects for floating objects
Reflection and refraction shaders for visual realism

Water will be rendered as a special transparent block type with vertex displacement using sine waves in the vertex shader, creating realistic wave motion.

# File Tree
```
.vscode/
    └── c_cpp_properties.json
build/
    ├── CMakeFiles/
        ├── 3Dgame.dir/
            ├── build.make
            ├── cmake_clean.cmake
            ├── compiler_depend.make
            ├── compiler_depend.ts
            ├── depend.make
            ├── DependInfo.cmake
            ├── flags.make
            ├── link.txt
            ├── main.cpp.o
            ├── main.cpp.o.d
            └── progress.make
    ├── shaders/
        ├── fragment.glsl
        └── vertex.glsl
    ├── 3Dgame
    ├── cmake_install.cmake
    ├── CMakeCache.txt
    ├── compile_commands.json
    └── Makefile
shaders/
    ├── fragment.glsl
    └── vertex.glsl
src/
    ├── camera.cpp
    └── shader.cpp
CMakeLists.txt
main.cpp
README.md
```

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

Stuff to add:
Static Block Grid
Remove the rotating cube code
Create a loop to generate 27 cubes in a grid
Each cube at position (x, y, z) where x,y,z = 0,1,2
Expected result: 27 static cubes arranged in a cube shape

Block Types & Colors
Goal: Different colored blocks
Add an enum for block types (AIR, STONE, DIRT, GRASS)
Pass block type to shader as a uniform
Color blocks differently (stone=gray, dirt=brown, grass=green)
Expected result: Colorful grid instead of all orange

Mouse Block Interaction
Goal: Click to place/remove blocks
Add ray casting from camera through mouse position
Detect which block you're looking at
Left click = remove block, Right click = place block
Expected result: You can edit the block grid with mouse

Basic Lighting
Add simple directional light (like sun)
Calculate lighting per face of each cube
Expected result: Blocks have depth and shadows

Step 5: Chunk System
Goal: Organize into 16x16 chunks for performance
Create a Chunk class that holds 16x16x256 blocks
Generate one chunk instead of 3x3x3 grid
Expected result: Larger world that's organized efficiently

Step 6: Multiple Chunks
Goal: Load chunks around player
Load 3x3 grid of chunks around player position
Unload distant chunks
Expected result: Bigger world that loads as you move

Step 7: Flat Terrain Generation
Goal: Generate a flat grass world
Fill bottom layers with stone, middle with dirt, top with grass
Expected result: A flat minecraft-like world

Step 8: Face Culling Optimization
Goal: Only render visible block faces
Don't render faces between solid blocks
Huge performance improvement
Expected result: Much higher FPS


Real Terrain
Step 9: Height-based Terrain
Goal: Hills and valleys
Use simple height maps to create terrain
Expected result: Rolling hills instead of flat world

Step 10: Perlin Noise
Goal: Realistic terrain generation
Implement Perlin noise for natural-looking terrain
Expected result: Minecraft-like terrain generation


Player Physics (gravity, collision)
Textures instead of solid colors
Save/Load worlds
More block types, crafting, etc.
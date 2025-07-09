


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
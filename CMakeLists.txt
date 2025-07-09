cmake_minimum_required(VERSION 3.16)
project(3Dgame)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Simple approach for macOS with Homebrew
set(HOMEBREW_PREFIX "/opt/homebrew")
if(NOT EXISTS ${HOMEBREW_PREFIX})
    set(HOMEBREW_PREFIX "/usr/local")
endif()

# Find OpenGL and GLFW
find_package(OpenGL REQUIRED)
find_package(glfw3 REQUIRED)

# Create executable with just main.cpp (everything is in one file)
add_executable(3Dgame main.cpp)

# Include directories
target_include_directories(3Dgame PRIVATE 
    ${HOMEBREW_PREFIX}/include
)

# Link libraries
target_link_libraries(3Dgame 
    glfw
    OpenGL::GL
    ${HOMEBREW_PREFIX}/lib/libGLEW.dylib
)

# Copy shaders to build directory
file(COPY ${CMAKE_SOURCE_DIR}/shaders DESTINATION ${CMAKE_BINARY_DIR})
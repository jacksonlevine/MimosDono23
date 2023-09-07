# MimosDono23
3D sandbox world simulator made with OpenGL and C++. Also includes a Python modding API.

## Description:

* Using the common GLFW3, GLEW, and GLM libraries to make a 3D game with a procedural world, and adding multiplayer and a Python modding API.

## Technologies used:

* OpenGL, through the libraries GLFW, GLEW, GLM
* EnTT for Entity Component System
* Python C API and Python scripts
* Boost libraries for UDP/TCP communication in multiplayer

## Installation:

### Vcpkg and dependencies

1. Make sure you have vcpkg installed and set up, as explained here: https://vcpkg.io/en/getting-started.html
2. For 64 bit Windows, run the following commands in the vcpkg directory. If not on Windows x64, replace `:windows-x64` with the correct triplet for your system. Follow this pattern for installing the following packages:
  * `./vcpkg.exe install glfw3:windows-x64`
  * `./vcpkg.exe install glew:windows-x64`
  * `./vcpkg.exe install glm:windows-x64`
  * `./vcpkg.exe install nlohmann-json:windows-x64`
  * `./vcpkg.exe install boost:windows-x64`
  * './vcpkg.exe install pybind11:windows-x64`
3. You must also have Python 3.10+ installed.

### After Vcpkg and dependencies are installed

1. Clone this repository
2. Open Visual Studio
3. Go to File -> Open -> Project/Solution
4. Browse to this repository's directory containing the .vcxproj file
5. Select the .vcxproj file and click "Open"
6. Visual Studio should automatically load the project and its associated files.

## License:

Copyright (c) 2023 Jackson Levine

This software is provided 'as-is', without any express or implied warranty. In no event will the authors be held liable for any damages arising from the use of this software.

Permission is granted to anyone to use this software for any purpose, including commercial applications, and to alter it and redistribute it freely, subject to the following restrictions:

The origin of this software must not be misrepresented; you must not claim that you wrote the original software. If you use this software in a product, an acknowledgment in the product documentation would be appreciated but is not required.

Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.

This notice may not be removed or altered from any source distribution.

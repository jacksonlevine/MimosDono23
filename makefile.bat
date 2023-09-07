echo off
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=~/Documents/vcpkg/vcpkg/scripts/buildsystems/vcpkg.cmake ..
cmake --build . --config Release || (
    echo Build failed.
    pause
    exit /b
)

copy /Y Release\main.exe ..
copy /Y Release\glew32.dll ..
copy /Y Release\glfw3.dll ..
copy /Y Release\sqlite3.dll ..
copy /Y Release\zlib1.dll ..
copy /Y Release\python310.dll ..
copy /Y Release\yaml-cpp.dll .. 
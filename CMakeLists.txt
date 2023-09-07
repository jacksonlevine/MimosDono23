cmake_minimum_required(VERSION 3.10)

# set the project name
project(wellrc)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(SOURCES
	src/persistentVariablesLib/pvarslib.cpp
    	src/ConsoleApplication1.cpp
	src/Biomes.cpp
	src/BlockTypes.cpp
	src/Bush.cpp
	src/Cactus.cpp
	src/CatTails.cpp
	src/Chunk.cpp
	src/Comm.cpp
	src/Game.cpp
	src/General.cpp
	src/GLSetup.cpp
	src/GlyphFace.cpp
	src/Grass.cpp
	src/Hud.cpp
	src/Maths.cpp
	src/MimosDonoApi.cpp
	src/Model.cpp
	src/Perlin.cpp
	src/PineTree.cpp
	src/Rock.cpp
	src/Scene.cpp
	src/SimpleChunk.cpp
	src/stb_image.cpp
	src/Tree.cpp
	src/World.cpp
	src/ZeroChunk.cpp
)
find_package(Boost REQUIRED)
include_directories(${Boost_INCLUDE_DIRS})


find_package(unofficial-sqlite3 CONFIG REQUIRED)
add_executable(main ${SOURCES})

include_directories(C:/Python311/include)
link_directories("C:/Python311/libs")

# Link against the Python library
target_link_libraries(main PRIVATE python311.lib)
find_package(OpenAL CONFIG REQUIRED)
    target_link_libraries(main PRIVATE OpenAL::OpenAL)

target_link_libraries(main PRIVATE unofficial::sqlite3::sqlite3)
target_link_libraries(main PRIVATE Boost::boost)
# target_include_directories(main PUBLIC ${CMAKE_SOURCE_DIR}/include)
find_package(folly CONFIG REQUIRED)
    target_link_libraries(main PRIVATE Folly::folly Folly::folly_deps Folly::follybenchmark Folly::folly_test_util)

find_package(Python REQUIRED COMPONENTS Interpreter Development)

target_include_directories(main PRIVATE ${Python_INCLUDE_DIRS})

target_link_libraries(main PRIVATE ${Python_LIBRARIES})

find_package(pybind11 CONFIG REQUIRED)

target_link_libraries(main PRIVATE pybind11::lto pybind11::embed pybind11::module pybind11::headers)
find_package(yaml-cpp CONFIG REQUIRED)
    target_link_libraries(main PRIVATE yaml-cpp)

find_package(EnTT CONFIG REQUIRED)
target_link_libraries(main PRIVATE EnTT::EnTT)
find_package(glfw3 CONFIG REQUIRED)
target_link_libraries(main PRIVATE glfw)
find_package(glm CONFIG REQUIRED)
target_link_libraries(main PRIVATE glm::glm)
find_package(GLEW REQUIRED)
target_link_libraries(main PRIVATE GLEW::GLEW)
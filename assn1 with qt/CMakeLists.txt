
cmake_minimum_required(VERSION 3.1.0)

project(a1)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

if(CMAKE_VERSION VERSION_LESS "3.7.0")
    set(CMAKE_INCLUDE_CURRENT_DIR ON)
endif()

#CMAKE_PREFIX_PATH /Users/yangguang/Qt5.9.0/5.9/clang_64/lib/cmake/Qt5Core; 
#    /Users/yangguang/Qt5.9.0/5.9/clang_64/lib/cmake/Qt5Widgets;
#    /Users/yangguang/Qt5.9.0/5.9/clang_64/lib/cmake/Qt5Gui;

set(CMAKE_PREFIX_PATH 
    /Users/yangguang/Qt5.9.0/5.9/clang_64/lib/cmake/Qt5;
    )
# set(QT_QMAKE_EXECUTABLE /Users/yangguang/Qt5.9.0/5.9/clang_64/bin)

find_package(Qt5 COMPONENTS Widgets  Gui OpenGL REQUIRED)
find_package(OpenGL REQUIRED)

if (APPLE)
  set(CMAKE_MACOSX_RPATH 1)
endif()

if (UNIX)
  set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --std=gnu++11")
  set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")
  set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wno-unused-variable")
  # recommended but not set by default
  # set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Werror")
elseif(MSVC)
  # recommended but not set by default
  set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -WX")
endif()

set (A1_LIBS ${OPENGL_gl_LIBRARY})

# GLFW
set(GLFW_INSTALL OFF)
set(GLFW_BUILD_DOCS OFF)
set(GLFW_BUILD_TESTS OFF)
set(GLFW_BUILD_EXAMPLES OFF)
add_subdirectory(glfw)
list(APPEND A1_LIBS glfw)
list(APPEND A1_INCLUDES glfw/include)


# GLEW - not needed on OS X
# we add glew source/header directly to the build, no glew library build.
if (NOT APPLE)
  add_definitions(-DGLEW_STATIC)
  list(APPEND A1_INCLUDES glew/include)
  list(APPEND A1_SRC glew/src/glew.c)
  SOURCE_GROUP(GLEW FILES glew/src/glew.c)
endif()

# vecmath include directory
include_directories(vecmath/include)
add_subdirectory(vecmath)
list (APPEND A1_LIBS 
    vecmath
    )
list (APPEND A1_INCLUDES vecmath/include)
list (APPEND A1_SRC
src/main.cpp
# src/main2.cpp
src/mainwindow.ui
src/mainwindow.cpp
src/glwidget.cpp
src/camera.cpp
  src/curve.cpp
  src/parse.cpp
  src/starter1_util.cpp
  src/surf.cpp
  src/vertexrecorder.cpp
#   src/mainFunctions.cpp
)
list (APPEND A1_HEADER
    src/glwidget.h

  src/camera.h
  src/curve.h
  src/gl.h
#   src/mainFunctions.h
  src/parse.h
  src/starter1_util.h
  src/vertexrecorder.h
  src/surf.h
  src/tuple.h
  src/gl.h
)


list (APPEND LIBS
    /Users/yangguang/Configure/OpenGL/libs
)

add_executable(a1
    
    ${A1_SRC}
    ${A1_HEADER}
    # resources.qrc
)
target_include_directories(a1 PUBLIC ${A1_INCLUDES})

target_link_libraries(a1 Qt5::Widgets Qt5::OpenGL ${OPENGL_LIBRARIES} ${A1_LIBS})
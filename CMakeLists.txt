cmake_minimum_required(VERSION 2.8)

project(Snake)

find_package(Curses REQUIRED)
include_directories(${CURSES_INCLUDE_DIR})

add_executable(snake src/main.cpp src/SnakeGame.cpp src/Snake.cpp)
target_link_libraries(snake ${CURSES_LIBRARIES})
cmake_minimum_required(VERSION 3.5)

project(wayland-app)

include_directories(./include
                    ./libs/glad/include)

add_subdirectory(./libs/glad)

add_executable(${PROJECT_NAME} ./src/main.cpp)

target_link_libraries(${PROJECT_NAME} -lglfw3 -lpthread -ldl glad)
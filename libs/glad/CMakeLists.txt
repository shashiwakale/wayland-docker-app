cmake_minimum_required(VERSION 3.5)

project(glad)

include_directories(./include)

add_library(${PROJECT_NAME} ./src/glad.c)
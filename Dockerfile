FROM ubuntu:20.04
ENV TZ=IN \
    DEBIAN_FRONTEND=noninteractive
RUN apt update 
RUN apt install -y \
    libwayland-dev \
    libxkbcommon-dev \
    cmake \
    libglfw3-dev \
    libgles2-mesa-dev \
    git \
    build-essential \
    pkg-config
RUN git clone https://github.com/glfw/glfw.git && cd glfw && mkdir build && cd build \
    && cmake -D GLFW_BUILD_X11=0 .. && make && make install
RUN mkdir /app
WORKDIR /app
COPY include /app/include
COPY libs /app/libs
COPY src /app/src
COPY CMakeLists.txt /app/
RUN mkdir build && cd build && cmake .. && make
CMD [ "/app/build/wayland-app" ]
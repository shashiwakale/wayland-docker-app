FROM opengl:v1.0.0
RUN mkdir /app
WORKDIR /app
COPY include /app/include
COPY libs /app/libs
COPY src /app/src
COPY CMakeLists.txt /app/
RUN mkdir build && cd build && cmake .. && make
CMD [ "/app/build/wayland-app" ]
# Wayland Docker App

This is the sample application, which will show how to show GUI from docker container using wayland.

## ![test status](https://github.com/shashiwakale/wayland-docker-app/actions/workflows/build.yml/badge.svg)

## Prerequisites
This application is tested and will work on Linux. [Ubuntu 20.04 LTS]

## Build Instruction
To build this application, you must have installed docker and openGL with wayland compositor.

### Install Dependancies
Install `libwayland-dev` and `libxkbcomman` libraries.
```bash
apt install libwayland-dev libxkbcommon-dev
```

### Build App Image
Build app image as `test-app` using docker
```bash
docker build . -f Dockerfile -t test-app
```

### Run wayland-docker-app
Use `run.sh` script, which will start conatiner with all necessary flags to show the application GUI.
```bash
./run.sh
```

## License
[MIT](https://github.com/shashiwakale/wayland-docker-app/blob/main/LICENSE)

## Contact
[shashi.wakale@gmail.com](mailto:shashi.wakale@gmail.com)
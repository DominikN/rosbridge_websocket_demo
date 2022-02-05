FROM ros:galactic-ros-core

SHELL ["/bin/bash", "-c"]

RUN apt update && apt install -y \
    ros-galactic-rosbridge-server

EXPOSE 9090
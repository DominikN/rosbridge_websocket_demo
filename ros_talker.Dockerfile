FROM ros:galactic-ros-core

SHELL ["/bin/bash", "-c"]

RUN apt update && apt install -y \
    ros-galactic-demo-nodes-cpp
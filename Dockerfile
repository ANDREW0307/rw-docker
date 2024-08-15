FROM gcc:latest
RUN apt-get update && apt-get install -y \
    cmake \
    teensy-loader-cli \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*
RUN pip3 install platformio
# any subsequent commands will be run in a directory named workspace in the container.
# if such a directory doesn't exist, Docker will create one 
WORKDIR /workspace

FROM gcc:latest

# Install necessary packages including pipx
RUN apt-get update && apt-get install -y \
    cmake \
    teensy-loader-cli \
    python3 \
    python3-pip \
    pipx \
    && rm -rf /var/lib/apt/lists/*

# Use pipx to install platformio
RUN pipx install platformio

WORKDIR /workspace

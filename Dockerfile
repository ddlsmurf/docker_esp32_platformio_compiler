# ddls/esp32_platformio_compiler:latest
FROM ubuntu:latest AS esp32_platformio_compiler
RUN apt-get update && apt-get install -y \
    git \
    python3-pip \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && pip3 install --no-cache-dir -U platformio \
  && pio platform install espressif32 --with-package=framework-arduinoespressif32 --with-package=tool-esptoolpy --with-package=toolchain-xtensa32 \
  && pio system prune --force

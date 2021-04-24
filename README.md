This is a docker image that can compile PlatformIO projects.

Example:

    docker run --rm                                                          \
        "--volume=`pwd`:/project"                                            \
        --workdir /project                                                   \
        --env "PLATFORMIO_BUILD_FLAGS=-DSOMEDEFINE=1"                        \
        ddls/esp32_platformio_compiler:latest                                \
        /bin/bash -c                                                         \
        "pio run && cp .pio/build/esp32dev/firmware.bin /project/output.bin"

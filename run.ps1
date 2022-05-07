$PROJECT_DIR = $(Resolve-Path .).Path
$PORT = "8080"
$RESOLUTION = "1280x720"

docker run `
    -it `
    -p ${PORT}:80 `
    -v ${PROJECT_DIR}:/foss/designs `
    -e VNC_RESOLUTION=${RESOLUTION} `
    efabless/foss-asic-tools:latest `
    bash

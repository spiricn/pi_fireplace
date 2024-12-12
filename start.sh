#!/bin/bash

main() {
    local scriptDir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

    export DISPLAY=:0

    cvlc \
        --fullscreen \
        --video-on-top \
        --repeat \
        --no-video-title \
        --no-audio \
        $scriptDir/fireplace.mp4
}

main "$@"

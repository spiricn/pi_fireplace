#!/bin/bash

main() {
    local scriptDir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

    export DISPLAY=:0

    while true; do
        cvlc \
            --fullscreen \
            --video-on-top \
            --repeat \
            --no-video-title \
            --no-audio \
            "$scriptDir/fireplace.mp4"
        
        if [ $? -eq 0 ]; then
            echo "Script executed successfully."
            break
        else
            echo "Script failed. Retrying in 5 seconds..."
            sleep 5
        fi
}

main "$@"
